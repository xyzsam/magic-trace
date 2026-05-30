open! Core

module Entry : sig
  module Cmdline : sig
    type t = string list
  end
end

val read_proc_info : Pid.t -> unit
val read_all_proc_info : unit -> unit
val cmdline_of_pid : Pid.t -> Entry.Cmdline.t option
val set_cmdline : Pid.t -> Entry.Cmdline.t -> unit
val set_thread_name : Pid.t -> string -> unit
val thread_name_of_tid : Pid.t -> string option
val clear : unit -> unit
