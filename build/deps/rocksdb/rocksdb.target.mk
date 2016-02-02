# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := rocksdb
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=rocksdb' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DSNAPPY=1' \
	'-DROCKSDB_PLATFORM_POSIX=1' \
	'-DOS_MACOSX=1' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter \
	-Wno-sign-compare \
	-Wno-unused-variable \
	-Wno-unused-function \
	-Wno-ignored-qualifiers

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++0x \
	-fno-threadsafe-statics \
	-mmacosx-version-min=10.7 \
	-std=c++11 \
	-stdlib=libc++

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I/Users/marco/.node-gyp/5.5.0/include/node \
	-I/Users/marco/.node-gyp/5.5.0/src \
	-I/Users/marco/.node-gyp/5.5.0/deps/uv/include \
	-I/Users/marco/.node-gyp/5.5.0/deps/v8/include \
	-I$(srcdir)/deps/rocksdb/rocksdb \
	-I$(srcdir)/deps/rocksdb/rocksdb/include \
	-I$(srcdir)/deps/snappy/snappy

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=rocksdb' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DSNAPPY=1' \
	'-DROCKSDB_PLATFORM_POSIX=1' \
	'-DOS_MACOSX=1' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-Os \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter \
	-Wno-sign-compare \
	-Wno-unused-variable \
	-Wno-unused-function \
	-Wno-ignored-qualifiers

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++0x \
	-fno-threadsafe-statics \
	-mmacosx-version-min=10.7 \
	-std=c++11 \
	-stdlib=libc++

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I/Users/marco/.node-gyp/5.5.0/include/node \
	-I/Users/marco/.node-gyp/5.5.0/src \
	-I/Users/marco/.node-gyp/5.5.0/deps/uv/include \
	-I/Users/marco/.node-gyp/5.5.0/deps/v8/include \
	-I$(srcdir)/deps/rocksdb/rocksdb \
	-I$(srcdir)/deps/rocksdb/rocksdb/include \
	-I$(srcdir)/deps/snappy/snappy

OBJS := \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/builder.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/c.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/column_family.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/compacted_db_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/compaction.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/compaction_iterator.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/compaction_job.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/compaction_picker.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/convenience.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/db_filesnapshot.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/dbformat.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/db_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/db_impl_debug.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/db_impl_readonly.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/db_impl_experimental.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/db_iter.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/experimental.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/event_helpers.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/file_indexer.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/filename.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/flush_job.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/flush_scheduler.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/forward_iterator.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/internal_stats.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/log_reader.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/log_writer.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/managed_iterator.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/memtable_allocator.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/memtable.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/memtable_list.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/merge_helper.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/merge_operator.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/repair.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/slice.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/snapshot_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/table_cache.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/table_properties_collector.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/transaction_log_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/version_builder.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/version_edit.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/version_set.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/wal_manager.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/write_batch.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/write_batch_base.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/write_controller.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/db/write_thread.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/port/stack_trace.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/port/port_posix.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/adaptive_table_factory.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/block_based_filter_block.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/block_based_table_builder.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/block_based_table_factory.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/block_based_table_reader.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/block_builder.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/block.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/block_hash_index.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/block_prefix_index.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/bloom_block.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/cuckoo_table_builder.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/cuckoo_table_factory.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/cuckoo_table_reader.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/flush_block_policy.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/format.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/full_filter_block.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/get_context.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/iterator.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/merger.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/meta_blocks.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/sst_file_writer.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/plain_table_builder.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/plain_table_factory.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/plain_table_index.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/plain_table_key_coding.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/plain_table_reader.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/table_properties.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/table/two_level_iterator.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/tools/dump/db_dump_tool.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/arena.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/auto_roll_logger.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/bloom.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/build_version.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/cache.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/coding.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/comparator.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/compaction_job_stats_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/crc32c.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/db_info_dumper.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/delete_scheduler_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/dynamic_bloom.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/env.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/env_hdfs.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/env_posix.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/file_util.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/file_reader_writer.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/filter_policy.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/hash.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/hash_cuckoo_rep.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/hash_linklist_rep.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/hash_skiplist_rep.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/histogram.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/instrumented_mutex.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/iostats_context.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/backupable/backupable_db.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/convenience/info_log_finder.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/checkpoint/checkpoint.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/compaction_filters/remove_emptyvalue_compactionfilter.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/document/document_db.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/document/json_document_builder.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/document/json_document.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/flashcache/flashcache.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/geodb/geodb_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/leveldb_options/leveldb_options.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/merge_operators/put.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/merge_operators/string_append/stringappend2.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/merge_operators/string_append/stringappend.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/merge_operators/uint64add.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/redis/redis_lists.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/spatialdb/spatial_db.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/table_properties_collectors/compact_on_deletion_collector.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/transactions/optimistic_transaction_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/transactions/optimistic_transaction_db_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/transactions/transaction_base.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/transactions/transaction_db_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/transactions/transaction_db_mutex_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/transactions/transaction_lock_mgr.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/transactions/transaction_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/transactions/transaction_util.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/ttl/db_ttl_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/write_batch_with_index/write_batch_with_index.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/utilities/write_batch_with_index/write_batch_with_index_internal.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/event_logger.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/log_buffer.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/logging.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/memenv.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/murmurhash.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/mutable_cf_options.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/options_builder.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/options.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/options_helper.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/options_parser.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/perf_context.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/perf_level.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/rate_limiter.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/skiplistrep.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/slice.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/statistics.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/status.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/status_message.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/string_util.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/sync_point.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/thread_local.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/thread_status_impl.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/thread_status_updater.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/thread_status_updater_debug.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/thread_status_util.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/thread_status_util_debug.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/vectorrep.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/xfunc.o \
	$(obj).target/$(TARGET)/deps/rocksdb/rocksdb/util/xxhash.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/snappy.node

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first

LIBS :=

$(builddir)/rocksdb.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/rocksdb.node: LIBS := $(LIBS)
$(builddir)/rocksdb.node: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/rocksdb.node: TOOLSET := $(TOOLSET)
$(builddir)/rocksdb.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(builddir)/rocksdb.node
# Add target alias
.PHONY: rocksdb
rocksdb: $(builddir)/rocksdb.node

# Short alias for building this executable.
.PHONY: rocksdb.node
rocksdb.node: $(builddir)/rocksdb.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/rocksdb.node

