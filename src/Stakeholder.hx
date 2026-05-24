import StringTools;

class Family {
    public final id:String;
    public final renderer:String;
    public final tranche:String;
    public final contextKey:String;
    public final contextValue:String;

    public function new(id:String, renderer:String, tranche:String, contextKey:String, contextValue:String) {
        this.id = id;
        this.renderer = renderer;
        this.tranche = tranche;
        this.contextKey = contextKey;
        this.contextValue = contextValue;
    }
}

class Stakeholder {
    static final families:Array<Family> = [
        new Family('code_analyzer', 'classic-six.code_analyzer', 'classic-six', 'analysisFocus', 'typed-ast-audit'),
        new Family('data_processing', 'classic-six.data_processing', 'classic-six', 'dataWindow', 'iterator-stream-reconciliation'),
        new Family('jargon', 'classic-six.jargon', 'classic-six', 'languagePolicy', 'haxe-glossary'),
        new Family('metrics', 'classic-six.metrics', 'classic-six', 'signalBlend', 'macro-runtime-latency'),
        new Family('network_activity', 'classic-six.network_activity', 'classic-six', 'transportMix', 'socket-http-sse'),
        new Family('system_monitoring', 'classic-six.system_monitoring', 'classic-six', 'telemetryScope', 'haxe-neko-runtime-host'),
        new Family('agent_workflows', 'modern-core.agent_workflows', 'modern-core', 'coordinationMode', 'target-dispatch-handshake'),
        new Family('platform_engineering', 'modern-core.platform_engineering', 'modern-core', 'platformSurface', 'haxe-neko-validation-lane'),
        new Family('observability_ai_runtime', 'modern-core.observability_ai_runtime', 'modern-core', 'runtimeSignals', 'logs-metrics-provider-boundary'),
        new Family('delivery_preview_ops', 'modern-core.delivery_preview_ops', 'modern-core', 'deliveryGuardrail', 'neko-preview-checkpoints'),
        new Family('supply_chain_security', 'modern-core.supply_chain_security', 'modern-core', 'supplyChainPosture', 'source-bytecode-attestation'),
        new Family('ai_inference_ops', 'fallback.ai_governance', 'fallback-ai_governance', 'fallbackFamily', 'ai_governance'),
        new Family('evaluation_and_guardrails', 'fallback.ai_governance', 'fallback-ai_governance', 'fallbackFamily', 'ai_governance'),
        new Family('knowledge_retrieval', 'fallback.ai_governance', 'fallback-ai_governance', 'fallbackFamily', 'ai_governance'),
        new Family('edge_client_runtime', 'fallback.ai_governance', 'fallback-ai_governance', 'fallbackFamily', 'ai_governance'),
        new Family('identity_and_trust', 'fallback.ai_governance', 'fallback-ai_governance', 'fallbackFamily', 'ai_governance'),
        new Family('aibom_provenance', 'fallback.ai_governance', 'fallback-ai_governance', 'fallbackFamily', 'ai_governance'),
        new Family('agent_boundary_security', 'fallback.ai_governance', 'fallback-ai_governance', 'fallbackFamily', 'ai_governance'),
        new Family('embedded_agentic_pipeline', 'fallback.ai_governance', 'fallback-ai_governance', 'fallbackFamily', 'ai_governance'),
        new Family('data_governance_compliance', 'fallback.ai_governance', 'fallback-ai_governance', 'fallbackFamily', 'ai_governance'),
        new Family('finops_capacity', 'fallback.ai_governance', 'fallback-ai_governance', 'fallbackFamily', 'ai_governance'),
        new Family('blockchain_protocol_ops', 'fallback.security_blockchain', 'fallback-security_blockchain', 'fallbackFamily', 'security_blockchain'),
        new Family('cross_chain_interop', 'fallback.security_blockchain', 'fallback-security_blockchain', 'fallbackFamily', 'security_blockchain'),
        new Family('proof_and_sequencer_ops', 'fallback.security_blockchain', 'fallback-security_blockchain', 'fallbackFamily', 'security_blockchain'),
        new Family('hybrid_runtime_ops', 'fallback.overlay_quantum', 'fallback-overlay_quantum', 'fallbackFamily', 'overlay_quantum'),
        new Family('capacity_cost_controller', 'fallback.overlay_quantum', 'fallback-overlay_quantum', 'fallbackFamily', 'overlay_quantum'),
        new Family('batch_execution_tuner', 'fallback.overlay_quantum', 'fallback-overlay_quantum', 'fallbackFamily', 'overlay_quantum'),
        new Family('compiler_maintainer', 'fallback.overlay_quantum', 'fallback-overlay_quantum', 'fallbackFamily', 'overlay_quantum'),
        new Family('interop_adapter_engineer', 'fallback.overlay_quantum', 'fallback-overlay_quantum', 'fallbackFamily', 'overlay_quantum'),
        new Family('preflight_capacity_planner', 'fallback.overlay_quantum', 'fallback-overlay_quantum', 'fallbackFamily', 'overlay_quantum'),
        new Family('simulator_performance_engineer', 'fallback.overlay_quantum', 'fallback-overlay_quantum', 'fallbackFamily', 'overlay_quantum'),
        new Family('fhir_profile_generator', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('smart_launch_oauth', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('bulk_fhir_population_ops', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('hl7v2_feed_ops', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('clinical_workflow_events', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('dicomweb_imaging_ops', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('openehr_semantic_record_ops', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('device_telemetry_clinical', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('emr_vendor_adapter', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('ocpp_chargepoint_ops', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('ocpi_roaming_ops', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('mcp_a2a_ops', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('streaming_bus_ops', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol'),
        new Family('service_mesh_rpc_ops', 'fallback.health_protocol', 'fallback-health_protocol', 'fallbackFamily', 'health_protocol')
    ];

    static function registryId(value:String):String {
        return StringTools.replace(value, '_', '-');
    }

    static function normalizeFamily(value:String):String {
        return StringTools.replace(value.toLowerCase(), '-', '_');
    }

    static function findFamily(value:String):Null<Family> {
        final normalized = normalizeFamily(value);
        for (family in families) {
            if (family.id == normalized) return family;
        }
        return null;
    }

    static function deterministicHash(value:String):Int {
        var hash = 2166136261.0;
        for (index in 0...value.length) {
            hash = (hash * 131 + value.charCodeAt(index)) % 4294967296.0;
        }
        return Std.int(hash);
    }

    static function pad2(value:Int):String {
        return value < 10 ? '0$value' : '$value';
    }

    static function quotedIds(items:Array<Family>):String {
        final out = [];
        for (family in items) out.push('"${registryId(family.id)}"');
        return out.join(',');
    }

    static function printRegistry():Void {
        final rows = [];
        final classic = [];
        final modern = [];
        final fallback = [];
        for (family in families) {
            rows.push('{"id":"${family.id}","registryId":"${registryId(family.id)}","rendererKey":"${family.renderer}","tranche":"${family.tranche}"}');
            if (family.tranche == 'classic-six') classic.push(family);
            else if (family.tranche == 'modern-core') modern.push(family);
            else fallback.push(family);
        }
        Sys.println('{"outputFormats":["text","json"],"flags":["list-values","focus-family","output-format","seed","experimental-provider"],"generatorFamilies":[${rows.join(',')}],"classicSix":[${quotedIds(classic)}],"modernCore":[${quotedIds(modern)}],"fallbackFamilies":[${quotedIds(fallback)}],"implementationMode":"family-focus-deterministic"}');
    }

    static function printPayload(family:Family, seed:String, outputFormat:String):Void {
        final hash = deterministicHash('$seed::${family.id}');
        final seconds = hash % 86400;
        final hour = Std.int(seconds / 3600);
        final minute = Std.int((seconds % 3600) / 60);
        final second = seconds % 60;
        final sequence = 1000 + (hash % 9000);
        final timestamp = '2026-01-01T${pad2(hour)}:${pad2(minute)}:${pad2(second)}Z';
        final fingerprint = '${registryId(family.id)}-${StringTools.hex(hash, 8)}';
        if (outputFormat == 'json') {
            Sys.println('{"eventType":"stakeholder.generator.output","sequence":$sequence,"family":"${family.id}","message":"Deterministic haxe tranche for ${family.id}","timestamp":"$timestamp","context":{"rendererKey":"${family.renderer}","${family.contextKey}":"${family.contextValue}","seedFingerprint":"$fingerprint","tranche":"${family.tranche}","haxeProfile":"haxe-neko-static-catalog"},"generationProvenance":{"sourceRepo":"haxe-stakeholder","baseline":"local-small-tranche-family-focus","experimental":false,"adapterType":"static-class-catalog","promptVersion":null},"outputFormat":"json"}');
        } else {
            Sys.println('family: ${family.id}');
            Sys.println('renderer: ${family.renderer}');
            Sys.println('tranche: ${family.tranche}');
            Sys.println('sequence: $sequence');
            Sys.println('timestamp: $timestamp');
            Sys.println('message: Deterministic haxe tranche for ${family.id}');
        }
    }

    static function fail(message:String):Void {
        Sys.stderr().writeString('$message\n');
        Sys.exit(2);
    }

    static function failWith(message:String, value:String):Void {
        Sys.stderr().writeString('$message: $value\n');
        Sys.exit(2);
    }

    static public function main():Void {
        var focusFamily = '';
        var seed = 'default-seed';
        var outputFormat = 'text';
        var listValues = false;
        final args = Sys.args();
        var index = 0;
        while (index < args.length) {
            final arg = args[index];
            switch (arg) {
                case '--list-values':
                    listValues = true;
                    index += 1;
                case '--focus-family':
                    if (index + 1 >= args.length) fail('missing value for --focus-family');
                    focusFamily = args[index + 1];
                    index += 2;
                case '--seed':
                    if (index + 1 >= args.length) fail('missing value for --seed');
                    seed = args[index + 1];
                    index += 2;
                case '--output-format':
                    if (index + 1 >= args.length) fail('missing value for --output-format');
                    final candidate = args[index + 1];
                    if (candidate != 'text' && candidate != 'json') failWith('invalid --output-format', candidate);
                    outputFormat = candidate;
                    index += 2;
                case '--experimental-provider':
                    if (index + 1 >= args.length) fail('missing value for --experimental-provider');
                    failWith('experimental provider is not enabled in the deterministic first tranche', args[index + 1]);
                default:
                    if (StringTools.startsWith(arg, '--experimental-')) fail('experimental flags require --experimental-provider');
                    failWith('unknown argument', arg);
            }
        }
        if (listValues) {
            printRegistry();
            return;
        }
        if (focusFamily == '') fail('focus-family is required and must be a known generator family');
        final family = findFamily(focusFamily);
        if (family == null) failWith('invalid --focus-family', focusFamily);
        printPayload(family, seed, outputFormat);
    }
}
