{'targets': [{
    'target_name': 'rocksdb'
  #, 'type': 'static_library'
		# Overcomes an issue with the linker and thin .a files on SmartOS
  #, 'standalone_static_library': 1
  , 'dependencies': [
        '../snappy/snappy.gyp:snappy'
    ]
  , 'direct_dependent_settings': {
        'include_dirs': [
            'rocksdb/include/'
          , 'rocksdb/port/'
          , 'rocksdb/util'
          , 'rocksdb/'
        ]
    }
  , 'defines': [
        'SNAPPY=1'
    ]
  , 'include_dirs': [
        'rocksdb/'
      , 'rocksdb/include/'
    ]
  , 'conditions': [
        ['OS == "win"', {
            'include_dirs': [
                'rocksdb/port/win'
              , 'port-libuv/'
            ]
          , 'defines': [
                'LEVELDB_PLATFORM_UV=1'
              , 'NOMINMAX=1'
              , '_HAS_EXCEPTIONS=0'
            ]
          , 'sources': [
                'port-libuv/port_uv.cc'
              , 'port-libuv/env_win.cc'
              , 'port-libuv/win_logger.cc'
            ]
          , 'msvs_settings': {
                'VCCLCompilerTool': {
                    'RuntimeTypeInfo': 'false'
                  , 'EnableFunctionLevelLinking': 'true'
                  , 'ExceptionHandling': '2'
                  , 'DisableSpecificWarnings': [ '4355', '4530' ,'4267', '4244' ]
                }
            }
        }, { # OS != "win"
            'sources': [
                'rocksdb/port/port_posix.cc'
              , 'rocksdb/port/port_posix.h'
              , 'rocksdb/util/env_posix.cc'
            ]
          , 'defines': [
                'ROCKSDB_PLATFORM_POSIX=1'
            ]
          , 'cflags': [
                '-std=gnu++0x'
              , '-fno-omit-frame-pointer'
              , '-momit-leaf-frame-pointer'
              , '-Woverloaded-virtual'
              , '-Wno-ignored-qualifiers'
              , '-Wno-type-limits'
              , '-Wno-unused-variable'
              , '-Wno-format-security'
              , '-fPIC'
              , '-fno-rtti'
            ]
          , 'cflags!': [
                '-fno-exceptions'
              , '-fno-rtti'
            ]
          , 'cflags_cc!': [
                '-fno-exceptions'
              , '-fno-rtti'
            ]
        }]
      , ['OS != "win"' and 'OS != "freebsd"', {
            'cflags': [
                '-Wno-sign-compare'
              , '-Wno-unused-but-set-variable'
            ]
        }]
      , ['OS == "linux"', {
            'defines': [
                'OS_LINUX=1'
            ]
          , 'libraries': [
                '-lpthread'
            ]
          , 'ccflags': [
                '-pthread'
            ]
        }]
      , ['OS == "freebsd"', {
            'defines': [
                'OS_FREEBSD=1'
              , '_REENTRANT=1'
            ]
          , 'libraries': [
                '-lpthread'
            ]
          , 'ccflags': [
                '-pthread'
            ]
          , 'cflags': [
                '-Wno-sign-compare'
            ]
        }]
      , ['OS == "solaris"', {
            'defines': [
                'OS_SOLARIS=1'
              , '_REENTRANT=1'
            ]
          , 'libraries': [
                '-lrt'
              , '-lpthread'
            ]
          , 'ccflags': [
                '-pthread'
            ]
        }]
      , ['OS == "mac"', {
            'defines': [
                'OS_MACOSX=1'
            ]
          , 'xcode_settings': {
                'WARNING_CFLAGS': [
                    '-Wno-sign-compare'
                  , '-Wno-unused-variable'
                  , '-Wno-unused-function'
                  , '-Wno-ignored-qualifiers'
                ]
              , 'OTHER_CPLUSPLUSFLAGS': [
                    '-mmacosx-version-min=10.7'
                  , '-std=c++11'
                  , '-stdlib=libc++'
                ]
              , 'GCC_ENABLE_CPP_EXCEPTIONS': 'YES'
              , 'GCC_ENABLE_CPP_RTTI': 'YES'
              , 'MACOSX_DEPLOYMENT_TARGET' : '10.7'
            }
        }]
    ]
  , 'sources': [
            'rocksdb/db/builder.cc'
            , 'rocksdb/db/c.cc'
            , 'rocksdb/db/column_family.cc'
            , 'rocksdb/db/compacted_db_impl.cc'
            , 'rocksdb/db/compaction.cc'
            , 'rocksdb/db/compaction_iterator.cc'
            , 'rocksdb/db/compaction_job.cc'
            , 'rocksdb/db/compaction_picker.cc'
            , 'rocksdb/db/convenience.cc'
            , 'rocksdb/db/db_filesnapshot.cc'
            , 'rocksdb/db/dbformat.cc'
            , 'rocksdb/db/db_impl.cc'
            , 'rocksdb/db/db_impl_debug.cc'
            , 'rocksdb/db/db_impl_readonly.cc'
            , 'rocksdb/db/db_impl_experimental.cc'
            , 'rocksdb/db/db_iter.cc'
            , 'rocksdb/db/experimental.cc'
            , 'rocksdb/db/event_helpers.cc'
            , 'rocksdb/db/file_indexer.cc'
            , 'rocksdb/db/filename.cc'
            , 'rocksdb/db/flush_job.cc'
            , 'rocksdb/db/flush_scheduler.cc'
            , 'rocksdb/db/forward_iterator.cc'
            , 'rocksdb/db/internal_stats.cc'
            , 'rocksdb/db/log_reader.cc'
            , 'rocksdb/db/log_writer.cc'
            , 'rocksdb/db/managed_iterator.cc'
            , 'rocksdb/db/memtable_allocator.cc'
            , 'rocksdb/db/memtable.cc'
            , 'rocksdb/db/memtable_list.cc'
            , 'rocksdb/db/merge_helper.cc'
            , 'rocksdb/db/merge_operator.cc'
            , 'rocksdb/db/repair.cc'
            , 'rocksdb/db/slice.cc'
            , 'rocksdb/db/snapshot_impl.cc'
            , 'rocksdb/db/table_cache.cc'
            , 'rocksdb/db/table_properties_collector.cc'
            , 'rocksdb/db/transaction_log_impl.cc'
            , 'rocksdb/db/version_builder.cc'
            , 'rocksdb/db/version_edit.cc'
            , 'rocksdb/db/version_set.cc'
            , 'rocksdb/db/wal_manager.cc'
            , 'rocksdb/db/write_batch.cc'
            , 'rocksdb/db/write_batch_base.cc'
            , 'rocksdb/db/write_controller.cc'
            , 'rocksdb/db/write_thread.cc'
            , 'rocksdb/port/stack_trace.cc'
            , 'rocksdb/port/port_posix.cc'
            , 'rocksdb/table/adaptive_table_factory.cc'
            , 'rocksdb/table/block_based_filter_block.cc'
            , 'rocksdb/table/block_based_table_builder.cc'
            , 'rocksdb/table/block_based_table_factory.cc'
            , 'rocksdb/table/block_based_table_reader.cc'
            , 'rocksdb/table/block_builder.cc'
            , 'rocksdb/table/block.cc'
            , 'rocksdb/table/block_hash_index.cc'
            , 'rocksdb/table/block_prefix_index.cc'
            , 'rocksdb/table/bloom_block.cc'
            , 'rocksdb/table/cuckoo_table_builder.cc'
            , 'rocksdb/table/cuckoo_table_factory.cc'
            , 'rocksdb/table/cuckoo_table_reader.cc'
            , 'rocksdb/table/flush_block_policy.cc'
            , 'rocksdb/table/format.cc'
            , 'rocksdb/table/full_filter_block.cc'
            , 'rocksdb/table/get_context.cc'
            , 'rocksdb/table/iterator.cc'
            , 'rocksdb/table/merger.cc'
            , 'rocksdb/table/meta_blocks.cc'
            , 'rocksdb/table/sst_file_writer.cc'
            , 'rocksdb/table/plain_table_builder.cc'
            , 'rocksdb/table/plain_table_factory.cc'
            , 'rocksdb/table/plain_table_index.cc'
            , 'rocksdb/table/plain_table_key_coding.cc'
            , 'rocksdb/table/plain_table_reader.cc'
            , 'rocksdb/table/table_properties.cc'
            , 'rocksdb/table/two_level_iterator.cc'
            , 'rocksdb/tools/dump/db_dump_tool.cc'
            , 'rocksdb/util/arena.cc'
            , 'rocksdb/util/auto_roll_logger.cc'
            , 'rocksdb/util/bloom.cc'
            , 'rocksdb/util/build_version.cc'
            , 'rocksdb/util/cache.cc'
            , 'rocksdb/util/coding.cc'
            , 'rocksdb/util/comparator.cc'
            , 'rocksdb/util/compaction_job_stats_impl.cc'
            , 'rocksdb/util/crc32c.cc'
            , 'rocksdb/util/db_info_dumper.cc'
            , 'rocksdb/util/delete_scheduler_impl.cc'
            , 'rocksdb/util/dynamic_bloom.cc'
            , 'rocksdb/util/env.cc'
            , 'rocksdb/util/env_hdfs.cc'
            , 'rocksdb/util/env_posix.cc'
            , 'rocksdb/util/file_util.cc'
            , 'rocksdb/util/file_reader_writer.cc'
            , 'rocksdb/util/filter_policy.cc'
            , 'rocksdb/util/hash.cc'
            , 'rocksdb/util/hash_cuckoo_rep.cc'
            , 'rocksdb/util/hash_linklist_rep.cc'
            , 'rocksdb/util/hash_skiplist_rep.cc'
            , 'rocksdb/util/histogram.cc'
            , 'rocksdb/util/instrumented_mutex.cc'
            , 'rocksdb/util/iostats_context.cc'
            , 'rocksdb/utilities/backupable/backupable_db.cc'
            , 'rocksdb/utilities/convenience/info_log_finder.cc'
            , 'rocksdb/utilities/checkpoint/checkpoint.cc'
            , 'rocksdb/utilities/compaction_filters/remove_emptyvalue_compactionfilter.cc'
            , 'rocksdb/utilities/document/document_db.cc'
            , 'rocksdb/utilities/document/json_document_builder.cc'
            , 'rocksdb/utilities/document/json_document.cc'
            , 'rocksdb/utilities/flashcache/flashcache.cc'
            , 'rocksdb/utilities/geodb/geodb_impl.cc'
            , 'rocksdb/utilities/leveldb_options/leveldb_options.cc'
            , 'rocksdb/utilities/merge_operators/put.cc'
            , 'rocksdb/utilities/merge_operators/string_append/stringappend2.cc'
            , 'rocksdb/utilities/merge_operators/string_append/stringappend.cc'
            , 'rocksdb/utilities/merge_operators/uint64add.cc'
            , 'rocksdb/utilities/redis/redis_lists.cc'
            , 'rocksdb/utilities/spatialdb/spatial_db.cc'
            , 'rocksdb/utilities/table_properties_collectors/compact_on_deletion_collector.cc'
            , 'rocksdb/utilities/transactions/optimistic_transaction_impl.cc'
            , 'rocksdb/utilities/transactions/optimistic_transaction_db_impl.cc'
            , 'rocksdb/utilities/transactions/transaction_base.cc'
            , 'rocksdb/utilities/transactions/transaction_db_impl.cc'
            , 'rocksdb/utilities/transactions/transaction_db_mutex_impl.cc'
            , 'rocksdb/utilities/transactions/transaction_lock_mgr.cc'
            , 'rocksdb/utilities/transactions/transaction_impl.cc'
            , 'rocksdb/utilities/transactions/transaction_util.cc'
            , 'rocksdb/utilities/ttl/db_ttl_impl.cc'
            , 'rocksdb/utilities/write_batch_with_index/write_batch_with_index.cc'
            , 'rocksdb/utilities/write_batch_with_index/write_batch_with_index_internal.cc'
            , 'rocksdb/util/event_logger.cc'
            , 'rocksdb/util/log_buffer.cc'
            , 'rocksdb/util/logging.cc'
            , 'rocksdb/util/memenv.cc'
            , 'rocksdb/util/murmurhash.cc'
            , 'rocksdb/util/mutable_cf_options.cc'
            , 'rocksdb/util/options_builder.cc'
            , 'rocksdb/util/options.cc'
            , 'rocksdb/util/options_helper.cc'
            , 'rocksdb/util/options_parser.cc'
            , 'rocksdb/util/perf_context.cc'
            , 'rocksdb/util/perf_level.cc'
            , 'rocksdb/util/rate_limiter.cc'
            , 'rocksdb/util/skiplistrep.cc'
            , 'rocksdb/util/slice.cc'
            , 'rocksdb/util/statistics.cc'
            , 'rocksdb/util/status.cc'
            , 'rocksdb/util/status_message.cc'
            , 'rocksdb/util/string_util.cc'
            , 'rocksdb/util/sync_point.cc'
            , 'rocksdb/util/thread_local.cc'
            , 'rocksdb/util/thread_status_impl.cc'
            , 'rocksdb/util/thread_status_updater.cc'
            , 'rocksdb/util/thread_status_updater_debug.cc'
            , 'rocksdb/util/thread_status_util.cc'
            , 'rocksdb/util/thread_status_util_debug.cc'
            , 'rocksdb/util/vectorrep.cc'
            , 'rocksdb/util/xfunc.cc'
            , 'rocksdb/util/xxhash.cc'
    ]
}]}
