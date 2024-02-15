open Types
include Linux_like

let pollin : c_short = 0x1
let pollpri : c_short = 0x2
let pollout : c_short = 0x4
let pollerr : c_short = 0x8
let pollhup : c_short = 0x10
let pollnval : c_short = 0x20
let pollrdnorm : c_short = 0x040
let pollwrnorm : c_short = 0x004
let pollrdband : c_short = 0x080
let pollwrband : c_short = 0x100

(* sed 's/lsl/lsl/g' *)
(* sed 's/lor/lor/g' *)
(* sed 's/let /let /g' *)
(* sed 's///g' *)
(* sed 's///g' *)

type mode_t = u16
type rlim_t = i64

(* type pthread_attr_t = *mut c_void *)
(* type pthread_mutex_t = *mut c_void *)
(* type pthread_mutexattr_t = *mut c_void *)
(* type pthread_cond_t = *mut c_void *)
(* type pthread_condattr_t = *mut c_void *)
(* type pthread_rwlock_t = *mut c_void *)
(* type pthread_rwlockattr_t = *mut c_void *)
type pthread_key_t = c_int
type tcflag_t = c_uint
type speed_t = c_uint
type nl_item = c_int
type id_t = i64

(* type vm_size_t = uintptr_t *)
type key_t = c_long
type elf32_addr = u32
type elf32_half = u16
type elf32_lword = u64
type elf32_off = u32
type elf32_sword = i32
type elf32_word = u32
type elf64_addr = u64
type elf64_half = u16
type elf64_lword = u64
type elf64_off = u64
type elf64_sword = i32
type elf64_sxword = i64
type elf64_word = u32
type elf64_xword = u64

(* type iconv_t = *mut c_void *)

let aio_listio_max : c_int = 16
let aio_canceled : c_int = 1
let aio_notcanceled : c_int = 2
let aio_alldone : c_int = 3
let lio_nop : c_int = 0
let lio_write : c_int = 1
let lio_read : c_int = 2
let lio_wait : c_int = 1
let lio_nowait : c_int = 0
let sigev_none : c_int = 0
let sigev_signal : c_int = 1
let sigev_thread : c_int = 2
let sigev_kevent : c_int = 3
let codeset : nl_item = 0
let d_t_fmt : nl_item = 1
let d_fmt : nl_item = 2
let t_fmt : nl_item = 3
let t_fmt_ampm : nl_item = 4
let am_str : nl_item = 5
let pm_str : nl_item = 6
let day_1 : nl_item = 7
let day_2 : nl_item = 8
let day_3 : nl_item = 9
let day_4 : nl_item = 10
let day_5 : nl_item = 11
let day_6 : nl_item = 12
let day_7 : nl_item = 13
let abday_1 : nl_item = 14
let abday_2 : nl_item = 15
let abday_3 : nl_item = 16
let abday_4 : nl_item = 17
let abday_5 : nl_item = 18
let abday_6 : nl_item = 19
let abday_7 : nl_item = 20
let mon_1 : nl_item = 21
let mon_2 : nl_item = 22
let mon_3 : nl_item = 23
let mon_4 : nl_item = 24
let mon_5 : nl_item = 25
let mon_6 : nl_item = 26
let mon_7 : nl_item = 27
let mon_8 : nl_item = 28
let mon_9 : nl_item = 29
let mon_10 : nl_item = 30
let mon_11 : nl_item = 31
let mon_12 : nl_item = 32
let abmon_1 : nl_item = 33
let abmon_2 : nl_item = 34
let abmon_3 : nl_item = 35
let abmon_4 : nl_item = 36
let abmon_5 : nl_item = 37
let abmon_6 : nl_item = 38
let abmon_7 : nl_item = 39
let abmon_8 : nl_item = 40
let abmon_9 : nl_item = 41
let abmon_10 : nl_item = 42
let abmon_11 : nl_item = 43
let abmon_12 : nl_item = 44
let era : nl_item = 45
let era_d_fmt : nl_item = 46
let era_d_t_fmt : nl_item = 47
let era_t_fmt : nl_item = 48
let alt_digits : nl_item = 49
let radixchar : nl_item = 50
let thousep : nl_item = 51
let yesexpr : nl_item = 52
let noexpr : nl_item = 53
let yesstr : nl_item = 54
let nostr : nl_item = 55
let crncystr : nl_item = 56
let d_md_order : nl_item = 57
let altmon_1 : nl_item = 58
let altmon_2 : nl_item = 59
let altmon_3 : nl_item = 60
let altmon_4 : nl_item = 61
let altmon_5 : nl_item = 62
let altmon_6 : nl_item = 63
let altmon_7 : nl_item = 64
let altmon_8 : nl_item = 65
let altmon_9 : nl_item = 66
let altmon_10 : nl_item = 67
let altmon_11 : nl_item = 68
let altmon_12 : nl_item = 69
let exit_failure : c_int = 1
let exit_success : c_int = 0
let eof : c_int = -1
let seek_set : c_int = 0
let seek_cur : c_int = 1
let seek_end : c_int = 2
let seek_data : c_int = 3
let seek_hole : c_int = 4
let _iofbf : c_int = 0
let _ionbf : c_int = 2
let _iolbf : c_int = 1
let bufsiz : c_uint = 1024
let fopen_max : c_uint = 20
let filename_max : c_uint = 1024
let l_tmpnam : c_uint = 1024
let tmp_max : c_uint = 308915776
let o_noctty : c_int = 32768
let o_direct : c_int = 0x00010000
let s_ififo : mode_t = 4096
let s_ifchr : mode_t = 8192
let s_ifblk : mode_t = 24576
let s_ifdir : mode_t = 16384
let s_ifreg : mode_t = 32768
let s_iflnk : mode_t = 40960
let s_ifsock : mode_t = 49152
let s_ifmt : mode_t = 61440
let s_iexec : mode_t = 64
let s_iwrite : mode_t = 128
let s_iread : mode_t = 256
let s_irwxu : mode_t = 448
let s_ixusr : mode_t = 64
let s_iwusr : mode_t = 128
let s_irusr : mode_t = 256
let s_irwxg : mode_t = 56
let s_ixgrp : mode_t = 8
let s_iwgrp : mode_t = 16
let s_irgrp : mode_t = 32
let s_irwxo : mode_t = 7
let s_ixoth : mode_t = 1
let s_iwoth : mode_t = 2
let s_iroth : mode_t = 4
let f_ok : c_int = 0
let r_ok : c_int = 4
let w_ok : c_int = 2
let x_ok : c_int = 1
let stdin_fileno : c_int = 0
let stdout_fileno : c_int = 1
let stderr_fileno : c_int = 2
let f_lock : c_int = 1
let f_test : c_int = 3
let f_tlock : c_int = 2
let f_ulock : c_int = 0
let f_dupfd_cloexec : c_int = 17
let f_dup2fd : c_int = 10
let f_dup2fd_cloexec : c_int = 18
let sighup : c_int = 1
let sigint : c_int = 2
let sigquit : c_int = 3
let sigill : c_int = 4
let sigabrt : c_int = 6
let sigemt : c_int = 7
let sigfpe : c_int = 8
let sigkill : c_int = 9
let sigsegv : c_int = 11
let sigpipe : c_int = 13
let sigalrm : c_int = 14
let sigterm : c_int = 15
let prot_none : c_int = 0
let prot_read : c_int = 1
let prot_write : c_int = 2
let prot_exec : c_int = 4
let map_file : c_int = 0x0000
let map_shared : c_int = 0x0001
let map_private : c_int = 0x0002
let map_fixed : c_int = 0x0010
let map_anon : c_int = 0x1000
let map_anonymous : c_int = map_anon

(* let map_failed: *mut c_void = !0 as *mut c_void *)

let mcl_current : c_int = 0x0001
let mcl_future : c_int = 0x0002
let mnt_expublic : c_int = 0x20000000
let mnt_noatime : c_int = 0x10000000
let mnt_noclusterr : c_int = 0x40000000
let mnt_noclusterw : c_int = 0x80000000
let mnt_nosymfollow : c_int = 0x00400000
let mnt_softdep : c_int = 0x00200000
let mnt_suiddir : c_int = 0x00100000
let mnt_exrdonly : c_int = 0x00000080
let mnt_defexported : c_int = 0x00000200
let mnt_exportanon : c_int = 0x00000400
let mnt_exkerb : c_int = 0x00000800
let mnt_delexport : c_int = 0x00020000
let ms_sync : c_int = 0x0000
let ms_async : c_int = 0x0001
let ms_invalidate : c_int = 0x0002
let eperm : c_int = 1
let enoent : c_int = 2
let esrch : c_int = 3
let eintr : c_int = 4
let eio : c_int = 5
let enxio : c_int = 6
let e2big : c_int = 7
let enoexec : c_int = 8
let ebadf : c_int = 9
let echild : c_int = 10
let edeadlk : c_int = 11
let enomem : c_int = 12
let eacces : c_int = 13
let efault : c_int = 14
let enotblk : c_int = 15
let ebusy : c_int = 16
let eexist : c_int = 17
let exdev : c_int = 18
let enodev : c_int = 19
let enotdir : c_int = 20
let eisdir : c_int = 21
let einval : c_int = 22
let enfile : c_int = 23
let emfile : c_int = 24
let enotty : c_int = 25
let etxtbsy : c_int = 26
let efbig : c_int = 27
let enospc : c_int = 28
let espipe : c_int = 29
let erofs : c_int = 30
let emlink : c_int = 31
let epipe : c_int = 32
let edom : c_int = 33
let erange : c_int = 34
let eagain : c_int = 35
let ewouldblock : c_int = 35
let einprogress : c_int = 36
let ealready : c_int = 37
let enotsock : c_int = 38
let edestaddrreq : c_int = 39
let emsgsize : c_int = 40
let eprototype : c_int = 41
let enoprotoopt : c_int = 42
let eprotonosupport : c_int = 43
let esocktnosupport : c_int = 44
let eopnotsupp : c_int = 45
let enotsup : c_int = eopnotsupp
let epfnosupport : c_int = 46
let eafnosupport : c_int = 47
let eaddrinuse : c_int = 48
let eaddrnotavail : c_int = 49
let enetdown : c_int = 50
let enetunreach : c_int = 51
let enetreset : c_int = 52
let econnaborted : c_int = 53
let econnreset : c_int = 54
let enobufs : c_int = 55
let eisconn : c_int = 56
let enotconn : c_int = 57
let eshutdown : c_int = 58
let etoomanyrefs : c_int = 59
let etimedout : c_int = 60
let econnrefused : c_int = 61
let eloop : c_int = 62
let enametoolong : c_int = 63
let ehostdown : c_int = 64
let ehostunreach : c_int = 65
let enotempty : c_int = 66
let eproclim : c_int = 67
let eusers : c_int = 68
let edquot : c_int = 69
let estale : c_int = 70
let eremote : c_int = 71
let ebadrpc : c_int = 72
let erpcmismatch : c_int = 73
let eprogunavail : c_int = 74
let eprogmismatch : c_int = 75
let eprocunavail : c_int = 76
let enolck : c_int = 77
let enosys : c_int = 78
let eftype : c_int = 79
let eauth : c_int = 80
let eneedauth : c_int = 81
let eidrm : c_int = 82
let enomsg : c_int = 83
let eoverflow : c_int = 84
let ecanceled : c_int = 85
let eilseq : c_int = 86
let enoattr : c_int = 87
let edoofus : c_int = 88
let ebadmsg : c_int = 89
let emultihop : c_int = 90
let enolink : c_int = 91
let eproto : c_int = 92

let pollstandard : c_short =
  pollin lor pollpri lor pollout lor pollrdnorm lor pollrdband lor pollwrband
  lor pollerr lor pollhup lor pollnval

let ai_passive : c_int = 0x00000001
let ai_canonname : c_int = 0x00000002
let ai_numerichost : c_int = 0x00000004
let ai_numericserv : c_int = 0x00000008
let ai_all : c_int = 0x00000100
let ai_addrconfig : c_int = 0x00000400
let ai_v4mapped : c_int = 0x00000800
let eai_again : c_int = 2
let eai_badflags : c_int = 3
let eai_fail : c_int = 4
let eai_family : c_int = 5
let eai_memory : c_int = 6
let eai_noname : c_int = 8
let eai_service : c_int = 9
let eai_socktype : c_int = 10
let eai_system : c_int = 11
let eai_overflow : c_int = 14
let f_dupfd : c_int = 0
let f_getfd : c_int = 1
let f_setfd : c_int = 2
let f_getfl : c_int = 3
let f_setfl : c_int = 4
let sigtrap : c_int = 5
let glob_append : c_int = 0x0001
let glob_dooffs : c_int = 0x0002
let glob_err : c_int = 0x0004
let glob_mark : c_int = 0x0008
let glob_nocheck : c_int = 0x0010
let glob_nosort : c_int = 0x0020
let glob_noescape : c_int = 0x2000
let glob_nospace : c_int = -1
let glob_aborted : c_int = -2
let glob_nomatch : c_int = -3
let posix_madv_normal : c_int = 0
let posix_madv_random : c_int = 1
let posix_madv_sequential : c_int = 2
let posix_madv_willneed : c_int = 3
let posix_madv_dontneed : c_int = 4
let pthread_process_private : c_int = 0
let pthread_process_shared : c_int = 1
let pthread_create_joinable : c_int = 0
let pthread_create_detached : c_int = 1
let rlimit_cpu : c_int = 0
let rlimit_fsize : c_int = 1
let rlimit_data : c_int = 2
let rlimit_stack : c_int = 3
let rlimit_core : c_int = 4
let rlimit_rss : c_int = 5
let rlimit_memlock : c_int = 6
let rlimit_nproc : c_int = 7
let rlimit_nofile : c_int = 8
let rlimit_sbsize : c_int = 9
let rlimit_vmem : c_int = 10
let rlimit_as : c_int = rlimit_vmem
let rlim_infinity : rlim_t = 0x7fff_ffff_ffff_ffffL
let rusage_self : c_int = 0
let rusage_children : c_int = -1
let clock_realtime : clockid_t = 0
let clock_virtual : clockid_t = 1
let clock_prof : clockid_t = 2
let clock_monotonic : clockid_t = 4
let clock_uptime : clockid_t = 5
let clock_uptime_precise : clockid_t = 7
let clock_uptime_fast : clockid_t = 8
let clock_realtime_precise : clockid_t = 9
let clock_realtime_fast : clockid_t = 10
let clock_monotonic_precise : clockid_t = 11
let clock_monotonic_fast : clockid_t = 12
let clock_second : clockid_t = 13
let clock_thread_cputime_id : clockid_t = 14
let clock_process_cputime_id : clockid_t = 15
let madv_normal : c_int = 0
let madv_random : c_int = 1
let madv_sequential : c_int = 2
let madv_willneed : c_int = 3
let madv_dontneed : c_int = 4
let madv_free : c_int = 5
let madv_nosync : c_int = 6
let madv_autosync : c_int = 7
let madv_nocore : c_int = 8
let madv_core : c_int = 9
let mincore_incore : c_int = 0x1
let mincore_referenced : c_int = 0x2
let mincore_modified : c_int = 0x4
let mincore_referenced_other : c_int = 0x8
let mincore_modified_other : c_int = 0x10
let af_unspec : c_int = 0
let af_local : c_int = 1
let af_unix : c_int = af_local
let af_inet : c_int = 2
let af_implink : c_int = 3
let af_pup : c_int = 4
let af_chaos : c_int = 5
let af_netbios : c_int = 6
let af_iso : c_int = 7
let af_osi : c_int = af_iso
let af_ecma : c_int = 8
let af_datakit : c_int = 9
let af_ccitt : c_int = 10
let af_sna : c_int = 11
let af_decnet : c_int = 12
let af_dli : c_int = 13
let af_lat : c_int = 14
let af_hylink : c_int = 15
let af_appletalk : c_int = 16
let af_route : c_int = 17
let af_link : c_int = 18
let pseudo_af_xtp : c_int = 19
let af_coip : c_int = 20
let af_cnt : c_int = 21
let pseudo_af_rtip : c_int = 22
let af_ipx : c_int = 23
let af_sip : c_int = 24
let pseudo_af_pip : c_int = 25
let af_isdn : c_int = 26
let af_e164 : c_int = af_isdn
let pseudo_af_key : c_int = 27
let af_inet6 : c_int = 28
let af_natm : c_int = 29
let af_atm : c_int = 30
let pseudo_af_hdrcmplt : c_int = 31
let af_netgraph : c_int = 32
let pf_unspec : c_int = af_unspec
let pf_local : c_int = af_local
let pf_unix : c_int = pf_local
let pf_inet : c_int = af_inet
let pf_implink : c_int = af_implink
let pf_pup : c_int = af_pup
let pf_chaos : c_int = af_chaos
let pf_netbios : c_int = af_netbios
let pf_iso : c_int = af_iso
let pf_osi : c_int = af_iso
let pf_ecma : c_int = af_ecma
let pf_datakit : c_int = af_datakit
let pf_ccitt : c_int = af_ccitt
let pf_sna : c_int = af_sna
let pf_decnet : c_int = af_decnet
let pf_dli : c_int = af_dli
let pf_lat : c_int = af_lat
let pf_hylink : c_int = af_hylink
let pf_appletalk : c_int = af_appletalk
let pf_route : c_int = af_route
let pf_link : c_int = af_link
let pf_xtp : c_int = pseudo_af_xtp
let pf_coip : c_int = af_coip
let pf_cnt : c_int = af_cnt
let pf_sip : c_int = af_sip
let pf_ipx : c_int = af_ipx
let pf_rtip : c_int = pseudo_af_rtip
let pf_pip : c_int = pseudo_af_pip
let pf_isdn : c_int = af_isdn
let pf_key : c_int = pseudo_af_key
let pf_inet6 : c_int = af_inet6
let pf_natm : c_int = af_natm
let pf_atm : c_int = af_atm
let pf_netgraph : c_int = af_netgraph
let piod_read_d : c_int = 1
let piod_write_d : c_int = 2
let piod_read_i : c_int = 3
let piod_write_i : c_int = 4
let pt_trace_me : c_int = 0
let pt_read_i : c_int = 1
let pt_read_d : c_int = 2
let pt_write_i : c_int = 4
let pt_write_d : c_int = 5
let pt_continue : c_int = 7
let pt_kill : c_int = 8
let pt_step : c_int = 9
let pt_attach : c_int = 10
let pt_detach : c_int = 11
let pt_io : c_int = 12
let somaxconn : c_int = 128
let msg_oob : c_int = 0x00000001
let msg_peek : c_int = 0x00000002
let msg_dontroute : c_int = 0x00000004
let msg_eor : c_int = 0x00000008
let msg_trunc : c_int = 0x00000010
let msg_ctrunc : c_int = 0x00000020
let msg_waitall : c_int = 0x00000040
let msg_dontwait : c_int = 0x00000080
let msg_eof : c_int = 0x00000100
let scm_timestamp : c_int = 0x02
let scm_creds : c_int = 0x03
let sock_stream : c_int = 1
let sock_dgram : c_int = 2
let sock_raw : c_int = 3
let sock_rdm : c_int = 4
let sock_seqpacket : c_int = 5
let sock_cloexec : c_int = 0x10000000
let sock_nonblock : c_int = 0x20000000
let sock_maxaddrlen : c_int = 255
let ip_ttl : c_int = 4
let ip_hdrincl : c_int = 2
let ip_recvdstaddr : c_int = 7
let ip_sendsrcaddr : c_int = ip_recvdstaddr
let ip_add_membership : c_int = 12
let ip_drop_membership : c_int = 13
let ip_recvif : c_int = 20
let ipv6_join_group : c_int = 12
let ipv6_leave_group : c_int = 13
let ipv6_checksum : c_int = 26
let ipv6_recvpktinfo : c_int = 36
let ipv6_pktinfo : c_int = 46
let ipv6_hoplimit : c_int = 47
let ipv6_recvtclass : c_int = 57
let ipv6_tclass : c_int = 61
let ipv6_dontfrag : c_int = 62
let ip_add_source_membership : c_int = 70
let ip_drop_source_membership : c_int = 71
let ip_block_source : c_int = 72
let ip_unblock_source : c_int = 73
let tcp_nopush : c_int = 4
let tcp_noopt : c_int = 8
let tcp_keepidle : c_int = 256
let tcp_keepintvl : c_int = 512
let tcp_keepcnt : c_int = 1024
let sol_socket : c_int = 0xffff
let so_debug : c_int = 0x01
let so_acceptconn : c_int = 0x0002
let so_reuseaddr : c_int = 0x0004
let so_keepalive : c_int = 0x0008
let so_dontroute : c_int = 0x0010
let so_broadcast : c_int = 0x0020
let so_useloopback : c_int = 0x0040
let so_linger : c_int = 0x0080
let so_oobinline : c_int = 0x0100
let so_reuseport : c_int = 0x0200
let so_timestamp : c_int = 0x0400
let so_nosigpipe : c_int = 0x0800
let so_acceptfilter : c_int = 0x1000
let so_sndbuf : c_int = 0x1001
let so_rcvbuf : c_int = 0x1002
let so_sndlowat : c_int = 0x1003
let so_rcvlowat : c_int = 0x1004
let so_sndtimeo : c_int = 0x1005
let so_rcvtimeo : c_int = 0x1006
let so_error : c_int = 0x1007
let so_type : c_int = 0x1008
let local_peercred : c_int = 1
let shut_rd : c_int = 0
let shut_wr : c_int = 1
let shut_rdwr : c_int = 2
let lock_sh : c_int = 1
let lock_ex : c_int = 2
let lock_nb : c_int = 4
let lock_un : c_int = 8
let map_copy : c_int = 0x0002

(* #[doc(hidden)] *)
(* #[deprecated( *)
(*     since = "0.2.54", *)
(*     note = "removed in freebsd 11, unused in dragonflybsd" *)
(* )] *)
(* let map_rename: c_int = 0x0020 *)
(* #[doc(hidden)] *)
(* #[deprecated( *)
(*     since = "0.2.54", *)
(*     note = "removed in freebsd 11, unused in dragonflybsd" *)
(* )] *)
(* let map_noreserve: c_int = 0x0040 *)
let map_hassemaphore : c_int = 0x0200
let map_stack : c_int = 0x0400
let map_nosync : c_int = 0x0800
let map_nocore : c_int = 0x020000
let ipproto_raw : c_int = 255
let _pc_link_max : c_int = 1
let _pc_max_canon : c_int = 2
let _pc_max_input : c_int = 3
let _pc_name_max : c_int = 4
let _pc_path_max : c_int = 5
let _pc_pipe_buf : c_int = 6
let _pc_chown_restricted : c_int = 7
let _pc_no_trunc : c_int = 8
let _pc_vdisable : c_int = 9
let _pc_alloc_size_min : c_int = 10
let _pc_filesizebits : c_int = 12
let _pc_rec_incr_xfer_size : c_int = 14
let _pc_rec_max_xfer_size : c_int = 15
let _pc_rec_min_xfer_size : c_int = 16
let _pc_rec_xfer_align : c_int = 17
let _pc_symlink_max : c_int = 18
let _pc_min_hole_size : c_int = 21
let _pc_async_io : c_int = 53
let _pc_prio_io : c_int = 54
let _pc_sync_io : c_int = 55
let _pc_acl_extended : c_int = 59
let _pc_acl_path_max : c_int = 60
let _pc_cap_present : c_int = 61
let _pc_inf_present : c_int = 62
let _pc_mac_present : c_int = 63
let _sc_arg_max : c_int = 1
let _sc_child_max : c_int = 2
let _sc_clk_tck : c_int = 3
let _sc_ngroups_max : c_int = 4
let _sc_open_max : c_int = 5
let _sc_job_control : c_int = 6
let _sc_saved_ids : c_int = 7
let _sc_version : c_int = 8
let _sc_bc_base_max : c_int = 9
let _sc_bc_dim_max : c_int = 10
let _sc_bc_scale_max : c_int = 11
let _sc_bc_string_max : c_int = 12
let _sc_coll_weights_max : c_int = 13
let _sc_expr_nest_max : c_int = 14
let _sc_line_max : c_int = 15
let _sc_re_dup_max : c_int = 16
let _sc_2_version : c_int = 17
let _sc_2_c_bind : c_int = 18
let _sc_2_c_dev : c_int = 19
let _sc_2_char_term : c_int = 20
let _sc_2_fort_dev : c_int = 21
let _sc_2_fort_run : c_int = 22
let _sc_2_localedef : c_int = 23
let _sc_2_sw_dev : c_int = 24
let _sc_2_upe : c_int = 25
let _sc_stream_max : c_int = 26
let _sc_tzname_max : c_int = 27
let _sc_asynchronous_io : c_int = 28
let _sc_mapped_files : c_int = 29
let _sc_memlock : c_int = 30
let _sc_memlock_range : c_int = 31
let _sc_memory_protection : c_int = 32
let _sc_message_passing : c_int = 33
let _sc_prioritized_io : c_int = 34
let _sc_priority_scheduling : c_int = 35
let _sc_realtime_signals : c_int = 36
let _sc_semaphores : c_int = 37
let _sc_fsync : c_int = 38
let _sc_shared_memory_objects : c_int = 39
let _sc_synchronized_io : c_int = 40
let _sc_timers : c_int = 41
let _sc_aio_listio_max : c_int = 42
let _sc_aio_max : c_int = 43
let _sc_aio_prio_delta_max : c_int = 44
let _sc_delaytimer_max : c_int = 45
let _sc_mq_open_max : c_int = 46
let _sc_pagesize : c_int = 47
let _sc_page_size : c_int = _sc_pagesize
let _sc_rtsig_max : c_int = 48
let _sc_sem_nsems_max : c_int = 49
let _sc_sem_value_max : c_int = 50
let _sc_sigqueue_max : c_int = 51
let _sc_timer_max : c_int = 52
let _sc_iov_max : c_int = 56
let _sc_nprocessors_conf : c_int = 57
let _sc_2_pbs : c_int = 59
let _sc_2_pbs_accounting : c_int = 60
let _sc_2_pbs_checkpoint : c_int = 61
let _sc_2_pbs_locate : c_int = 62
let _sc_2_pbs_message : c_int = 63
let _sc_2_pbs_track : c_int = 64
let _sc_advisory_info : c_int = 65
let _sc_barriers : c_int = 66
let _sc_clock_selection : c_int = 67
let _sc_cputime : c_int = 68
let _sc_file_locking : c_int = 69
let _sc_nprocessors_onln : c_int = 58
let _sc_getgr_r_size_max : c_int = 70
let _sc_getpw_r_size_max : c_int = 71
let _sc_host_name_max : c_int = 72
let _sc_login_name_max : c_int = 73
let _sc_monotonic_clock : c_int = 74
let _sc_mq_prio_max : c_int = 75
let _sc_reader_writer_locks : c_int = 76
let _sc_regexp : c_int = 77
let _sc_shell : c_int = 78
let _sc_spawn : c_int = 79
let _sc_spin_locks : c_int = 80
let _sc_sporadic_server : c_int = 81
let _sc_thread_attr_stackaddr : c_int = 82
let _sc_thread_attr_stacksize : c_int = 83
let _sc_thread_destructor_iterations : c_int = 85
let _sc_thread_keys_max : c_int = 86
let _sc_thread_prio_inherit : c_int = 87
let _sc_thread_prio_protect : c_int = 88
let _sc_thread_priority_scheduling : c_int = 89
let _sc_thread_process_shared : c_int = 90
let _sc_thread_safe_functions : c_int = 91
let _sc_thread_sporadic_server : c_int = 92
let _sc_thread_stack_min : c_int = 93
let _sc_thread_threads_max : c_int = 94
let _sc_timeouts : c_int = 95
let _sc_threads : c_int = 96
let _sc_trace : c_int = 97
let _sc_trace_event_filter : c_int = 98
let _sc_trace_inherit : c_int = 99
let _sc_trace_log : c_int = 100
let _sc_tty_name_max : c_int = 101
let _sc_typed_memory_objects : c_int = 102
let _sc_v6_ilp32_off32 : c_int = 103
let _sc_v6_ilp32_offbig : c_int = 104
let _sc_v6_lp64_off64 : c_int = 105
let _sc_v6_lpbig_offbig : c_int = 106
let _sc_atexit_max : c_int = 107
let _sc_xopen_crypt : c_int = 108
let _sc_xopen_enh_i18n : c_int = 109
let _sc_xopen_legacy : c_int = 110
let _sc_xopen_realtime : c_int = 111
let _sc_xopen_realtime_threads : c_int = 112
let _sc_xopen_shm : c_int = 113
let _sc_xopen_streams : c_int = 114
let _sc_xopen_unix : c_int = 115
let _sc_xopen_version : c_int = 116
let _sc_xopen_xcu_version : c_int = 117
let _sc_ipv6 : c_int = 118
let _sc_raw_sockets : c_int = 119
let _sc_symloop_max : c_int = 120
let _sc_phys_pages : c_int = 121

(* let pthread_mutex_initializer: pthread_mutex_t = 0 as *mut _ *)
(* let pthread_cond_initializer: pthread_cond_t = 0 as *mut _ *)
(* let pthread_rwlock_initializer: pthread_rwlock_t = 0 as *mut _ *)
let pthread_mutex_errorcheck : c_int = 1
let pthread_mutex_recursive : c_int = 2
let pthread_mutex_normal : c_int = 3
let pthread_mutex_default : c_int = pthread_mutex_errorcheck
let sched_fifo : c_int = 1
let sched_other : c_int = 2
let sched_rr : c_int = 3
let fd_setsize : usize = 1024
let st_nosuid : c_ulong = 2
let ni_maxhost : size_t = 1025
let xucred_version : c_uint = 0
let rtld_local : c_int = 0
let rtld_nodelete : c_int = 0x1000
let rtld_noload : c_int = 0x2000
let rtld_global : c_int = 0x100
let log_ntp : c_int = 12 lsl 3
let log_security : c_int = 13 lsl 3
let log_console : c_int = 14 lsl 3
let log_nfacilities : c_int = 24
let tiocexcl : c_ulong = 0x2000740d
let tiocnxcl : c_ulong = 0x2000740e
let tiocflush : c_ulong = 0x80047410
let tiocgeta : c_ulong = 0x402c7413
let tiocseta : c_ulong = 0x802c7414
let tiocsetaw : c_ulong = 0x802c7415
let tiocsetaf : c_ulong = 0x802c7416
let tiocgetd : c_ulong = 0x4004741a
let tiocsetd : c_ulong = 0x8004741b
let tiocgdrainwait : c_ulong = 0x40047456
let tiocsdrainwait : c_ulong = 0x80047457
let tioctimestamp : c_ulong = 0x40107459
let tiocmgdtrwait : c_ulong = 0x4004745a
let tiocmsdtrwait : c_ulong = 0x8004745b
let tiocdrain : c_ulong = 0x2000745e
let tiocext : c_ulong = 0x80047460
let tiocsctty : c_ulong = 0x20007461
let tioccons : c_ulong = 0x80047462
let tiocgsid : c_ulong = 0x40047463
let tiocstat : c_ulong = 0x20007465
let tiocucntl : c_ulong = 0x80047466
let tiocswinsz : c_ulong = 0x80087467
let tiocgwinsz : c_ulong = 0x40087468
let tiocmget : c_ulong = 0x4004746a
let tiocm_le : c_int = 0x1
let tiocm_dtr : c_int = 0x2
let tiocm_rts : c_int = 0x4
let tiocm_st : c_int = 0x8
let tiocm_sr : c_int = 0x10
let tiocm_cts : c_int = 0x20
let tiocm_ri : c_int = 0x80
let tiocm_dsr : c_int = 0x100
let tiocm_cd : c_int = 0x40
let tiocm_car : c_int = 0x40
let tiocm_rng : c_int = 0x80
let tiocmbic : c_ulong = 0x8004746b
let tiocmbis : c_ulong = 0x8004746c
let tiocmset : c_ulong = 0x8004746d
let tiocstart : c_ulong = 0x2000746e
let tiocstop : c_ulong = 0x2000746f
let tiocpkt : c_ulong = 0x80047470
let tiocpkt_data : c_int = 0x0
let tiocpkt_flushread : c_int = 0x1
let tiocpkt_flushwrite : c_int = 0x2
let tiocpkt_stop : c_int = 0x4
let tiocpkt_start : c_int = 0x8
let tiocpkt_nostop : c_int = 0x10
let tiocpkt_dostop : c_int = 0x20
let tiocpkt_ioctl : c_int = 0x40
let tiocnotty : c_ulong = 0x20007471
let tiocsti : c_ulong = 0x80017472
let tiocoutq : c_ulong = 0x40047473
let tiocspgrp : c_ulong = 0x80047476
let tiocgpgrp : c_ulong = 0x40047477
let tioccdtr : c_ulong = 0x20007478
let tiocsdtr : c_ulong = 0x20007479
let ttydisc : c_int = 0x0
let slipdisc : c_int = 0x4
let pppdisc : c_int = 0x5
let netgraphdisc : c_int = 0x6
let biocgrsig : c_ulong = 0x40044272
let biocsrsig : c_ulong = 0x80044273
let biocsdlt : c_ulong = 0x80044278
let biocgseesent : c_ulong = 0x40044276
let biocsseesent : c_ulong = 0x80044277
let biocsetf : c_ulong = 0x80104267
let biocgdltlist : c_ulong = 0xc0104279
let biocsrtimeout : c_ulong = 0x8010426d
let biocgrtimeout : c_ulong = 0x4010426e
let fiodtype : c_ulong = 0x4004667a
let fiogetlba : c_ulong = 0x40046679
let b0 : speed_t = 0
let b50 : speed_t = 50
let b75 : speed_t = 75
let b110 : speed_t = 110
let b134 : speed_t = 134
let b150 : speed_t = 150
let b200 : speed_t = 200
let b300 : speed_t = 300
let b600 : speed_t = 600
let b1200 : speed_t = 1200
let b1800 : speed_t = 1800
let b2400 : speed_t = 2400
let b4800 : speed_t = 4800
let b9600 : speed_t = 9600
let b19200 : speed_t = 19200
let b38400 : speed_t = 38400
let b7200 : speed_t = 7200
let b14400 : speed_t = 14400
let b28800 : speed_t = 28800
let b57600 : speed_t = 57600
let b76800 : speed_t = 76800
let b115200 : speed_t = 115200
let b230400 : speed_t = 230400
let exta : speed_t = 19200
let extb : speed_t = 38400

(* let sem_failed: *mut sem_t = 0 as *mut sem_t *)

let crtscts : tcflag_t = 0x00030000
let ccts_oflow : tcflag_t = 0x00010000
let crts_iflow : tcflag_t = 0x00020000
let cdtr_iflow : tcflag_t = 0x00040000
let cdsr_oflow : tcflag_t = 0x00080000
let ccar_oflow : tcflag_t = 0x00100000
let verase2 : usize = 7
let ocrnl : tcflag_t = 0x10
let onocr : tcflag_t = 0x20
let onlret : tcflag_t = 0x40
let cmgroup_max : usize = 16
let eui64_len : usize = 8

(* // https://github.com/freebsd/freebsd/blob/head/sys/net/bpf.h *)
(* let bpf_alignment: usize = sizeof_long *)

(* // values for rtprio struct (prio field) and syscall (function argument) *)
let rtp_prio_min : c_ushort = 0
let rtp_prio_max : c_ushort = 31
let rtp_lookup : c_int = 0
let rtp_set : c_int = 1

(* // flags for chflags(2) *)
let uf_settable : c_ulong = 0x0000ffff
let uf_nodump : c_ulong = 0x00000001
let uf_immutable : c_ulong = 0x00000002
let uf_append : c_ulong = 0x00000004
let uf_opaque : c_ulong = 0x00000008
let uf_nounlink : c_ulong = 0x00000010
let sf_settable : c_ulong = 0xffff0000
let sf_archived : c_ulong = 0x00010000
let sf_immutable : c_ulong = 0x00020000
let sf_append : c_ulong = 0x00040000
let sf_nounlink : c_ulong = 0x00100000
let timer_abstime : c_int = 1

(* //<sys/timex.h> *)
let ntp_api : c_int = 4
let maxphase : c_long = 500000000
let maxfreq : c_long = 500000
let minsec : c_int = 256
let maxsec : c_int = 2048
let nanosecond : c_long = 1000000000
let scale_ppm : c_int = 65
let maxtc : c_int = 10
let mod_offset : c_uint = 0x0001
let mod_frequency : c_uint = 0x0002
let mod_maxerror : c_uint = 0x0004
let mod_esterror : c_uint = 0x0008
let mod_status : c_uint = 0x0010
let mod_timeconst : c_uint = 0x0020
let mod_ppsmax : c_uint = 0x0040
let mod_tai : c_uint = 0x0080
let mod_micro : c_uint = 0x1000
let mod_nano : c_uint = 0x2000
let mod_clkb : c_uint = 0x4000
let mod_clka : c_uint = 0x8000
let sta_pll : c_int = 0x0001
let sta_ppsfreq : c_int = 0x0002
let sta_ppstime : c_int = 0x0004
let sta_fll : c_int = 0x0008
let sta_ins : c_int = 0x0010
let sta_del : c_int = 0x0020
let sta_unsync : c_int = 0x0040
let sta_freqhold : c_int = 0x0080
let sta_ppssignal : c_int = 0x0100
let sta_ppsjitter : c_int = 0x0200
let sta_ppswander : c_int = 0x0400
let sta_ppserror : c_int = 0x0800
let sta_clockerr : c_int = 0x1000
let sta_nano : c_int = 0x2000
let sta_mode : c_int = 0x4000
let sta_clk : c_int = 0x8000

let sta_ronly : c_int =
  sta_ppssignal lor sta_ppsjitter lor sta_ppswander lor sta_ppserror
  lor sta_clockerr lor sta_nano lor sta_mode lor sta_clk

let time_ok : c_int = 0
let time_ins : c_int = 1
let time_del : c_int = 2
let time_oop : c_int = 3
let time_wait : c_int = 4
let time_error : c_int = 5
let reg_enosys : c_int = -1
let reg_illseq : c_int = 17
let ipc_private : key_t = 0
let ipc_creat : c_int = 0o1000
let ipc_excl : c_int = 0o2000
let ipc_nowait : c_int = 0o4000
let ipc_rmid : c_int = 0
let ipc_set : c_int = 1
let ipc_stat : c_int = 2
let ipc_r : c_int = 0o400
let ipc_w : c_int = 0o200
let ipc_m : c_int = 0o10000
let shm_rdonly : c_int = 0o10000
let shm_rnd : c_int = 0o20000
let shm_r : c_int = 0o400
let shm_w : c_int = 0o200
let kenv_get : c_int = 0
let kenv_set : c_int = 1
let kenv_unset : c_int = 2
let kenv_dump : c_int = 3
let kenv_mnamelen : c_int = 128
let kenv_mvallen : c_int = 128
let rb_askname : c_int = 0x001
let rb_single : c_int = 0x002
let rb_nosync : c_int = 0x004
let rb_halt : c_int = 0x008
let rb_initname : c_int = 0x010
let rb_dfltroot : c_int = 0x020
let rb_kdb : c_int = 0x040
let rb_rdonly : c_int = 0x080
let rb_dump : c_int = 0x100
let rb_miniroot : c_int = 0x200
let rb_verbose : c_int = 0x800
let rb_serial : c_int = 0x1000
let rb_cdrom : c_int = 0x2000
let rb_poweroff : c_int = 0x4000
let rb_gdb : c_int = 0x8000
let rb_mute : c_int = 0x10000
let rb_selftest : c_int = 0x20000
