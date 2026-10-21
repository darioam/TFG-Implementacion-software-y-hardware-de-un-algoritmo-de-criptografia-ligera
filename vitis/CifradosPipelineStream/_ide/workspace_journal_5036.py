# 2026-05-02T14:18:50.013008800
import vitis

client = vitis.create_client()
client.set_workspace(path="CifradosPipelineStream")

comp = client.get_component(name="cifrado_pipeline_stream_4")
comp.run(operation="PACKAGE")

