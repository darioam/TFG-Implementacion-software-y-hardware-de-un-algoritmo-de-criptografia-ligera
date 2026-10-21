# 2026-04-15T18:49:03.503998600
import vitis

client = vitis.create_client()
client.set_workspace(path="CifradosSerializados")

comp = client.get_component(name="cifrado_serial")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

vitis.dispose()

