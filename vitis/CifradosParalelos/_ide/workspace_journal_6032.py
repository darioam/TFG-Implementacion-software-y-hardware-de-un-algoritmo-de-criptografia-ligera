# 2026-04-04T00:12:01.847804100
import vitis

client = vitis.create_client()
client.set_workspace(path="CifradosParalelos")

comp = client.get_component(name="cifrador_paralelo_pre_8")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

