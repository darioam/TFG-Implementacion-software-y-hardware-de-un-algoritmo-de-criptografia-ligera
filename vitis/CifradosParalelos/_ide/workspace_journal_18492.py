# 2026-04-03T11:52:00.583137400
import vitis

client = vitis.create_client()
client.set_workspace(path="CifradosParalelos")

comp = client.get_component(name="cifrador_paralelo_pre_4")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="cifrador_paralelo_pre_8")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="cifrador_paralelo_stream")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="cifrador_paralelo_pre_4")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="cifrador_paralelo_pre_8")
comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

