################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################

require 'ffi'

require_relative 'ffi/version'


module CZMQ
  module FFI
    extend ::FFI::Library
    
    def self.available?
      @available
    end
    
    begin
      lib_name = 'libczmq'
      lib_paths = ['/usr/local/lib', '/opt/local/lib', '/usr/lib64']
        .map { |path| "#{path}/#{lib_name}.#{::FFI::Platform::LIBSUFFIX}" }
      ffi_lib lib_paths + [lib_name]
      @available = true
    rescue LoadError
      warn ""
      warn "WARNING: ::CZMQ::FFI is not available without libczmq."
      warn ""
      @available = false
    end
    
    if available?
      opts = {
        blocking: true  # only necessary on MRI to deal with the GIL.
      }
      
      attach_function :zactor_new, [:pointer, :pointer], :pointer, **opts
      attach_function :zactor_destroy, [:pointer], :void, **opts
      attach_function :zactor_send, [:pointer, :pointer], :int, **opts
      attach_function :zactor_recv, [:pointer], :pointer, **opts
      attach_function :zactor_is, [:pointer], :bool, **opts
      attach_function :zactor_resolve, [:pointer], :pointer, **opts
      attach_function :zactor_sock, [:pointer], :pointer, **opts
      attach_function :zactor_test, [:bool], :void, **opts
      
      require_relative 'ffi/zactor'
      
      attach_function :zdir_new, [:string, :string], :pointer, **opts
      attach_function :zdir_destroy, [:pointer], :void, **opts
      attach_function :zdir_path, [:pointer], :string, **opts
      attach_function :zdir_modified, [:pointer], :pointer, **opts
      attach_function :zdir_cursize, [:pointer], :pointer, **opts
      attach_function :zdir_count, [:pointer], :size_t, **opts
      attach_function :zdir_list, [:pointer], :pointer, **opts
      attach_function :zdir_remove, [:pointer, :bool], :void, **opts
      attach_function :zdir_diff, [:pointer, :pointer, :string], :pointer, **opts
      attach_function :zdir_resync, [:pointer, :string], :pointer, **opts
      attach_function :zdir_cache, [:pointer], :pointer, **opts
      attach_function :zdir_fprint, [:pointer, :pointer, :int], :void, **opts
      attach_function :zdir_print, [:pointer, :int], :void, **opts
      attach_function :zdir_watch, [:pointer, :pointer], :void, **opts
      attach_function :zdir_test, [:bool], :void, **opts
      
      require_relative 'ffi/zdir'
      
      attach_function :zdir_patch_new, [:string, :pointer, :pointer, :string], :pointer, **opts
      attach_function :zdir_patch_destroy, [:pointer], :void, **opts
      attach_function :zdir_patch_dup, [:pointer], :pointer, **opts
      attach_function :zdir_patch_path, [:pointer], :string, **opts
      attach_function :zdir_patch_file, [:pointer], :pointer, **opts
      attach_function :zdir_patch_op, [:pointer], :pointer, **opts
      attach_function :zdir_patch_vpath, [:pointer], :string, **opts
      attach_function :zdir_patch_digest_set, [:pointer], :void, **opts
      attach_function :zdir_patch_digest, [:pointer], :string, **opts
      attach_function :zdir_patch_test, [:bool], :void, **opts
      
      require_relative 'ffi/zdir_patch'
      
      attach_function :zfile_new, [:string, :string], :pointer, **opts
      attach_function :zfile_destroy, [:pointer], :void, **opts
      attach_function :zfile_dup, [:pointer], :pointer, **opts
      attach_function :zfile_filename, [:pointer, :string], :string, **opts
      attach_function :zfile_restat, [:pointer], :void, **opts
      attach_function :zfile_modified, [:pointer], :pointer, **opts
      attach_function :zfile_cursize, [:pointer], :pointer, **opts
      attach_function :zfile_is_directory, [:pointer], :bool, **opts
      attach_function :zfile_is_regular, [:pointer], :bool, **opts
      attach_function :zfile_is_readable, [:pointer], :bool, **opts
      attach_function :zfile_is_writeable, [:pointer], :bool, **opts
      attach_function :zfile_is_stable, [:pointer], :bool, **opts
      attach_function :zfile_has_changed, [:pointer], :bool, **opts
      attach_function :zfile_remove, [:pointer], :void, **opts
      attach_function :zfile_input, [:pointer], :int, **opts
      attach_function :zfile_output, [:pointer], :int, **opts
      attach_function :zfile_read, [:pointer, :size_t, :pointer], :pointer, **opts
      attach_function :zfile_eof, [:pointer], :bool, **opts
      attach_function :zfile_write, [:pointer, :pointer, :pointer], :int, **opts
      attach_function :zfile_readln, [:pointer], :string, **opts
      attach_function :zfile_close, [:pointer], :void, **opts
      attach_function :zfile_handle, [:pointer], :pointer, **opts
      attach_function :zfile_digest, [:pointer], :string, **opts
      attach_function :zfile_test, [:bool], :void, **opts
      
      require_relative 'ffi/zfile'
      
      attach_function :zframe_new, [:pointer, :size_t], :pointer, **opts
      attach_function :zframe_destroy, [:pointer], :void, **opts
      attach_function :zframe_new_empty, [], :pointer, **opts
      attach_function :zframe_recv, [:pointer], :pointer, **opts
      attach_function :zframe_send, [:pointer, :pointer, :int], :int, **opts
      attach_function :zframe_size, [:pointer], :size_t, **opts
      attach_function :zframe_data, [:pointer], :pointer, **opts
      attach_function :zframe_dup, [:pointer], :pointer, **opts
      attach_function :zframe_strhex, [:pointer], :pointer, **opts
      attach_function :zframe_strdup, [:pointer], :pointer, **opts
      attach_function :zframe_streq, [:pointer, :string], :bool, **opts
      attach_function :zframe_more, [:pointer], :int, **opts
      attach_function :zframe_set_more, [:pointer, :int], :void, **opts
      attach_function :zframe_eq, [:pointer, :pointer], :bool, **opts
      attach_function :zframe_reset, [:pointer, :pointer, :size_t], :void, **opts
      attach_function :zframe_print, [:pointer, :string], :void, **opts
      attach_function :zframe_is, [:pointer], :bool, **opts
      attach_function :zframe_test, [:bool], :void, **opts
      
      require_relative 'ffi/zframe'
      
      attach_function :zhashx_new, [], :pointer, **opts
      attach_function :zhashx_destroy, [:pointer], :void, **opts
      attach_function :zhashx_insert, [:pointer, :pointer, :pointer], :int, **opts
      attach_function :zhashx_update, [:pointer, :pointer, :pointer], :void, **opts
      attach_function :zhashx_delete, [:pointer, :pointer], :void, **opts
      attach_function :zhashx_purge, [:pointer], :void, **opts
      attach_function :zhashx_lookup, [:pointer, :pointer], :pointer, **opts
      attach_function :zhashx_rename, [:pointer, :pointer, :pointer], :int, **opts
      attach_function :zhashx_freefn, [:pointer, :pointer, :pointer], :pointer, **opts
      attach_function :zhashx_size, [:pointer], :size_t, **opts
      attach_function :zhashx_keys, [:pointer], :pointer, **opts
      attach_function :zhashx_values, [:pointer], :pointer, **opts
      attach_function :zhashx_first, [:pointer], :pointer, **opts
      attach_function :zhashx_next, [:pointer], :pointer, **opts
      attach_function :zhashx_cursor, [:pointer], :pointer, **opts
      attach_function :zhashx_comment, [:pointer, :string, :varargs], :void, **opts
      attach_function :zhashx_save, [:pointer, :string], :int, **opts
      attach_function :zhashx_load, [:pointer, :string], :int, **opts
      attach_function :zhashx_refresh, [:pointer], :int, **opts
      attach_function :zhashx_pack, [:pointer], :pointer, **opts
      attach_function :zhashx_unpack, [:pointer], :pointer, **opts
      attach_function :zhashx_dup, [:pointer], :pointer, **opts
      attach_function :zhashx_set_destructor, [:pointer, :pointer], :void, **opts
      attach_function :zhashx_set_duplicator, [:pointer, :pointer], :void, **opts
      attach_function :zhashx_set_key_destructor, [:pointer, :pointer], :void, **opts
      attach_function :zhashx_set_key_duplicator, [:pointer, :pointer], :void, **opts
      attach_function :zhashx_set_key_comparator, [:pointer, :pointer], :void, **opts
      attach_function :zhashx_set_key_hasher, [:pointer, :pointer], :void, **opts
      attach_function :zhashx_dup_v2, [:pointer], :pointer, **opts
      attach_function :zhashx_autofree, [:pointer], :void, **opts
      attach_function :zhashx_foreach, [:pointer, :pointer, :pointer], :int, **opts
      attach_function :zhashx_test, [:int], :void, **opts
      
      require_relative 'ffi/zhashx'
      
      attach_function :ziflist_new, [], :pointer, **opts
      attach_function :ziflist_destroy, [:pointer], :void, **opts
      attach_function :ziflist_print, [:pointer], :void, **opts
      attach_function :ziflist_reload, [:pointer], :void, **opts
      attach_function :ziflist_size, [:pointer], :size_t, **opts
      attach_function :ziflist_first, [:pointer], :string, **opts
      attach_function :ziflist_next, [:pointer], :string, **opts
      attach_function :ziflist_address, [:pointer], :string, **opts
      attach_function :ziflist_broadcast, [:pointer], :string, **opts
      attach_function :ziflist_netmask, [:pointer], :string, **opts
      attach_function :ziflist_test, [:bool], :void, **opts
      
      require_relative 'ffi/ziflist'
      
      attach_function :zloop_new, [], :pointer, **opts
      attach_function :zloop_destroy, [:pointer], :void, **opts
      attach_function :zloop_reader, [:pointer, :pointer, :pointer, :pointer], :int, **opts
      attach_function :zloop_reader_end, [:pointer, :pointer], :void, **opts
      attach_function :zloop_reader_set_tolerant, [:pointer, :pointer], :void, **opts
      attach_function :zloop_poller, [:pointer, :pointer, :pointer, :pointer], :int, **opts
      attach_function :zloop_poller_end, [:pointer, :pointer], :void, **opts
      attach_function :zloop_poller_set_tolerant, [:pointer, :pointer], :void, **opts
      attach_function :zloop_timer, [:pointer, :size_t, :size_t, :pointer, :pointer], :int, **opts
      attach_function :zloop_timer_end, [:pointer, :int], :int, **opts
      attach_function :zloop_ticket, [:pointer, :pointer, :pointer], :pointer, **opts
      attach_function :zloop_ticket_reset, [:pointer, :pointer], :void, **opts
      attach_function :zloop_ticket_delete, [:pointer, :pointer], :void, **opts
      attach_function :zloop_set_ticket_delay, [:pointer, :size_t], :void, **opts
      attach_function :zloop_set_max_timers, [:pointer, :size_t], :void, **opts
      attach_function :zloop_set_verbose, [:pointer, :bool], :void, **opts
      attach_function :zloop_start, [:pointer], :int, **opts
      attach_function :zloop_ignore_interrupts, [:pointer], :void, **opts
      attach_function :zloop_test, [:bool], :void, **opts
      
      require_relative 'ffi/zloop'
      
      attach_function :zmsg_new, [], :pointer, **opts
      attach_function :zmsg_destroy, [:pointer], :void, **opts
      attach_function :zmsg_recv, [:pointer], :pointer, **opts
      attach_function :zmsg_send, [:pointer, :pointer], :int, **opts
      attach_function :zmsg_size, [:pointer], :size_t, **opts
      attach_function :zmsg_content_size, [:pointer], :size_t, **opts
      attach_function :zmsg_prepend, [:pointer, :pointer], :int, **opts
      attach_function :zmsg_append, [:pointer, :pointer], :int, **opts
      attach_function :zmsg_pop, [:pointer], :pointer, **opts
      attach_function :zmsg_pushmem, [:pointer, :pointer, :size_t], :int, **opts
      attach_function :zmsg_addmem, [:pointer, :pointer, :size_t], :int, **opts
      attach_function :zmsg_pushstr, [:pointer, :string], :int, **opts
      attach_function :zmsg_addstr, [:pointer, :string], :int, **opts
      attach_function :zmsg_pushstrf, [:pointer, :string, :varargs], :int, **opts
      attach_function :zmsg_addstrf, [:pointer, :string, :varargs], :int, **opts
      attach_function :zmsg_popstr, [:pointer], :pointer, **opts
      attach_function :zmsg_addmsg, [:pointer, :pointer], :int, **opts
      attach_function :zmsg_popmsg, [:pointer], :pointer, **opts
      attach_function :zmsg_remove, [:pointer, :pointer], :void, **opts
      attach_function :zmsg_first, [:pointer], :pointer, **opts
      attach_function :zmsg_next, [:pointer], :pointer, **opts
      attach_function :zmsg_last, [:pointer], :pointer, **opts
      attach_function :zmsg_save, [:pointer, :pointer], :int, **opts
      attach_function :zmsg_load, [:pointer, :pointer], :pointer, **opts
      attach_function :zmsg_encode, [:pointer, :pointer], :size_t, **opts
      attach_function :zmsg_decode, [:pointer, :size_t], :pointer, **opts
      attach_function :zmsg_dup, [:pointer], :pointer, **opts
      attach_function :zmsg_print, [:pointer], :void, **opts
      attach_function :zmsg_eq, [:pointer, :pointer], :bool, **opts
      attach_function :zmsg_new_signal, [:pointer], :pointer, **opts
      attach_function :zmsg_signal, [:pointer], :int, **opts
      attach_function :zmsg_is, [:pointer], :bool, **opts
      attach_function :zmsg_test, [:bool], :void, **opts
      
      require_relative 'ffi/zmsg'
      
      attach_function :zsock_new, [:int], :pointer, **opts
      attach_function :zsock_destroy, [:pointer], :void, **opts
      attach_function :zsock_new_pub, [:string], :pointer, **opts
      attach_function :zsock_new_sub, [:string, :string], :pointer, **opts
      attach_function :zsock_new_req, [:string], :pointer, **opts
      attach_function :zsock_new_rep, [:string], :pointer, **opts
      attach_function :zsock_new_dealer, [:string], :pointer, **opts
      attach_function :zsock_new_router, [:string], :pointer, **opts
      attach_function :zsock_new_push, [:string], :pointer, **opts
      attach_function :zsock_new_pull, [:string], :pointer, **opts
      attach_function :zsock_new_xpub, [:string], :pointer, **opts
      attach_function :zsock_new_xsub, [:string], :pointer, **opts
      attach_function :zsock_new_pair, [:string], :pointer, **opts
      attach_function :zsock_new_stream, [:string], :pointer, **opts
      attach_function :zsock_bind, [:pointer, :string, :varargs], :int, **opts
      attach_function :zsock_endpoint, [:pointer], :string, **opts
      attach_function :zsock_unbind, [:pointer, :string, :varargs], :int, **opts
      attach_function :zsock_connect, [:pointer, :string, :varargs], :int, **opts
      attach_function :zsock_disconnect, [:pointer, :string, :varargs], :int, **opts
      attach_function :zsock_attach, [:pointer, :string, :bool], :int, **opts
      attach_function :zsock_type_str, [:pointer], :string, **opts
      attach_function :zsock_send, [:pointer, :string, :varargs], :int, **opts
      attach_function :zsock_vsend, [:pointer, :string, :pointer], :int, **opts
      attach_function :zsock_recv, [:pointer, :string, :varargs], :int, **opts
      attach_function :zsock_vrecv, [:pointer, :string, :pointer], :int, **opts
      attach_function :zsock_bsend, [:pointer, :string, :varargs], :int, **opts
      attach_function :zsock_brecv, [:pointer, :string, :varargs], :int, **opts
      attach_function :zsock_set_unbounded, [:pointer], :void, **opts
      attach_function :zsock_signal, [:pointer, :pointer], :int, **opts
      attach_function :zsock_wait, [:pointer], :int, **opts
      attach_function :zsock_flush, [:pointer], :void, **opts
      attach_function :zsock_is, [:pointer], :bool, **opts
      attach_function :zsock_resolve, [:pointer], :pointer, **opts
      attach_function :zsock_test, [:bool], :void, **opts
      
      require_relative 'ffi/zsock'
      
      attach_function :zhash_new, [], :pointer, **opts
      attach_function :zhash_destroy, [:pointer], :void, **opts
      attach_function :zhash_insert, [:pointer, :string, :pointer], :int, **opts
      attach_function :zhash_update, [:pointer, :string, :pointer], :void, **opts
      attach_function :zhash_delete, [:pointer, :string], :void, **opts
      attach_function :zhash_lookup, [:pointer, :string], :pointer, **opts
      attach_function :zhash_rename, [:pointer, :string, :string], :int, **opts
      attach_function :zhash_freefn, [:pointer, :string, :pointer], :pointer, **opts
      attach_function :zhash_size, [:pointer], :size_t, **opts
      attach_function :zhash_dup, [:pointer], :pointer, **opts
      attach_function :zhash_keys, [:pointer], :pointer, **opts
      attach_function :zhash_first, [:pointer], :pointer, **opts
      attach_function :zhash_next, [:pointer], :pointer, **opts
      attach_function :zhash_cursor, [:pointer], :string, **opts
      attach_function :zhash_comment, [:pointer, :string, :varargs], :void, **opts
      attach_function :zhash_pack, [:pointer], :pointer, **opts
      attach_function :zhash_unpack, [:pointer], :pointer, **opts
      attach_function :zhash_save, [:pointer, :string], :int, **opts
      attach_function :zhash_load, [:pointer, :string], :int, **opts
      attach_function :zhash_refresh, [:pointer], :int, **opts
      attach_function :zhash_autofree, [:pointer], :void, **opts
      attach_function :zhash_foreach, [:pointer, :pointer, :pointer], :int, **opts
      attach_function :zhash_test, [:int], :void, **opts
      
      require_relative 'ffi/zhash'
      
      attach_function :zlist_new, [], :pointer, **opts
      attach_function :zlist_destroy, [:pointer], :void, **opts
      attach_function :zlist_first, [:pointer], :pointer, **opts
      attach_function :zlist_next, [:pointer], :pointer, **opts
      attach_function :zlist_last, [:pointer], :pointer, **opts
      attach_function :zlist_head, [:pointer], :pointer, **opts
      attach_function :zlist_tail, [:pointer], :pointer, **opts
      attach_function :zlist_item, [:pointer], :pointer, **opts
      attach_function :zlist_append, [:pointer, :pointer], :int, **opts
      attach_function :zlist_push, [:pointer, :pointer], :int, **opts
      attach_function :zlist_pop, [:pointer], :pointer, **opts
      attach_function :zlist_exists, [:pointer, :pointer], :bool, **opts
      attach_function :zlist_remove, [:pointer, :pointer], :void, **opts
      attach_function :zlist_dup, [:pointer], :pointer, **opts
      attach_function :zlist_purge, [:pointer], :void, **opts
      attach_function :zlist_size, [:pointer], :size_t, **opts
      attach_function :zlist_sort, [:pointer, :pointer], :void, **opts
      attach_function :zlist_autofree, [:pointer], :void, **opts
      attach_function :zlist_comparefn, [:pointer, :pointer], :void, **opts
      attach_function :zlist_freefn, [:pointer, :pointer, :pointer, :bool], :pointer, **opts
      attach_function :zlist_test, [:int], :void, **opts
      
      require_relative 'ffi/zlist'
    end
  end
end

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
