# 2026-05-02T00:57:51.586923300
import vitis

client = vitis.create_client()
client.set_workspace(path="CifradosPipelineStream")

comp = client.create_hls_component(name = "cifrado_pipeline_stream_2",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosPipelineStream\cifrado_pipeline_stream_2\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosPipelineStream/cifrado_pipeline_stream_2/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_pipeline_stream_2")

comp = client.get_component(name="cifrado_pipeline_stream_2")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "cifrado_pipeline_stream_4",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosPipelineStream\cifrado_pipeline_stream_4\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

comp = client.get_component(name="cifrado_pipeline_stream_4")
comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosPipelineStream/cifrado_pipeline_stream_4/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_pipeline_stream_4")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

