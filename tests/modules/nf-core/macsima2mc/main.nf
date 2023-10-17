#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { MACSIMA2MC } from '../../../../modules/nf-core/macsima2mc/main.nf'

workflow test_macsima2mc {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    MACSIMA2MC ( input )
}
