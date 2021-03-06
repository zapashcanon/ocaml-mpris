(* File auto-generated by obus-gen-interface, DO NOT EDIT. *)
open OBus_member
module Org_mpris_MediaPlayer2 : sig
  val interface : OBus_name.interface
  val m_Quit : (unit, unit) Method.t
  val m_Raise : (unit, unit) Method.t
  val p_CanQuit : (bool, [ `readable ]) Property.t
  val p_CanRaise : (bool, [ `readable ]) Property.t
  val p_CanSetFullscreen : (bool, [ `readable ]) Property.t
  val p_DesktopEntry : (string, [ `readable ]) Property.t
  val p_Fullscreen : (bool, [ `readable | `writable ]) Property.t
  val p_HasTrackList : (bool, [ `readable ]) Property.t
  val p_Identity : (string, [ `readable ]) Property.t
  val p_SupportedMimeTypes : (string list, [ `readable ]) Property.t
  val p_SupportedUriSchemes : (string list, [ `readable ]) Property.t
  type 'a members = {
    m_Quit : 'a OBus_object.t -> unit -> unit Lwt.t;
    m_Raise : 'a OBus_object.t -> unit -> unit Lwt.t;
    p_CanQuit : 'a OBus_object.t -> bool React.signal;
    p_CanRaise : 'a OBus_object.t -> bool React.signal;
    p_CanSetFullscreen : 'a OBus_object.t -> bool React.signal;
    p_DesktopEntry : 'a OBus_object.t -> string React.signal;
    p_Fullscreen : ('a OBus_object.t -> bool React.signal) * ('a OBus_object.t -> bool -> unit Lwt.t);
    p_HasTrackList : 'a OBus_object.t -> bool React.signal;
    p_Identity : 'a OBus_object.t -> string React.signal;
    p_SupportedMimeTypes : 'a OBus_object.t -> string list React.signal;
    p_SupportedUriSchemes : 'a OBus_object.t -> string list React.signal;
  }
  val make : 'a members -> 'a OBus_object.interface
end
module Org_mpris_MediaPlayer2_Player : sig
  val interface : OBus_name.interface
  val m_Next : (unit, unit) Method.t
  val m_OpenUri : (string, unit) Method.t
  val m_Pause : (unit, unit) Method.t
  val m_Play : (unit, unit) Method.t
  val m_PlayPause : (unit, unit) Method.t
  val m_Previous : (unit, unit) Method.t
  val m_Seek : (int64, unit) Method.t
  val m_SetPosition : (OBus_path.t * int64, unit) Method.t
  val m_Stop : (unit, unit) Method.t
  val s_Seeked : int64 Signal.t
  val p_CanControl : (bool, [ `readable ]) Property.t
  val p_CanGoNext : (bool, [ `readable ]) Property.t
  val p_CanGoPrevious : (bool, [ `readable ]) Property.t
  val p_CanPause : (bool, [ `readable ]) Property.t
  val p_CanPlay : (bool, [ `readable ]) Property.t
  val p_CanSeek : (bool, [ `readable ]) Property.t
  val p_LoopStatus : (string, [ `readable | `writable ]) Property.t
  val p_MaximumRate : (float, [ `readable ]) Property.t
  val p_Metadata : ((string * OBus_value.V.single) list, [ `readable ]) Property.t
  val p_MinimumRate : (float, [ `readable ]) Property.t
  val p_PlaybackStatus : (string, [ `readable ]) Property.t
  val p_Position : (int64, [ `readable ]) Property.t
  val p_Rate : (float, [ `readable | `writable ]) Property.t
  val p_Shuffle : (bool, [ `readable | `writable ]) Property.t
  val p_Volume : (float, [ `readable | `writable ]) Property.t
  type 'a members = {
    m_Next : 'a OBus_object.t -> unit -> unit Lwt.t;
    m_OpenUri : 'a OBus_object.t -> string -> unit Lwt.t;
    m_Pause : 'a OBus_object.t -> unit -> unit Lwt.t;
    m_Play : 'a OBus_object.t -> unit -> unit Lwt.t;
    m_PlayPause : 'a OBus_object.t -> unit -> unit Lwt.t;
    m_Previous : 'a OBus_object.t -> unit -> unit Lwt.t;
    m_Seek : 'a OBus_object.t -> int64 -> unit Lwt.t;
    m_SetPosition : 'a OBus_object.t -> OBus_path.t * int64 -> unit Lwt.t;
    m_Stop : 'a OBus_object.t -> unit -> unit Lwt.t;
    p_CanControl : 'a OBus_object.t -> bool React.signal;
    p_CanGoNext : 'a OBus_object.t -> bool React.signal;
    p_CanGoPrevious : 'a OBus_object.t -> bool React.signal;
    p_CanPause : 'a OBus_object.t -> bool React.signal;
    p_CanPlay : 'a OBus_object.t -> bool React.signal;
    p_CanSeek : 'a OBus_object.t -> bool React.signal;
    p_LoopStatus : ('a OBus_object.t -> string React.signal) * ('a OBus_object.t -> string -> unit Lwt.t);
    p_MaximumRate : 'a OBus_object.t -> float React.signal;
    p_Metadata : 'a OBus_object.t -> (string * OBus_value.V.single) list React.signal;
    p_MinimumRate : 'a OBus_object.t -> float React.signal;
    p_PlaybackStatus : 'a OBus_object.t -> string React.signal;
    p_Position : 'a OBus_object.t -> int64 React.signal;
    p_Rate : ('a OBus_object.t -> float React.signal) * ('a OBus_object.t -> float -> unit Lwt.t);
    p_Shuffle : ('a OBus_object.t -> bool React.signal) * ('a OBus_object.t -> bool -> unit Lwt.t);
    p_Volume : ('a OBus_object.t -> float React.signal) * ('a OBus_object.t -> float -> unit Lwt.t);
  }
  val make : 'a members -> 'a OBus_object.interface
end
module Org_mpris_MediaPlayer2_Playlists : sig
  val interface : OBus_name.interface
  val m_ActivatePlaylist : (OBus_path.t, unit) Method.t
  val m_GetPlaylists : (int32 * int32 * string * bool, (OBus_path.t * string * string) list) Method.t
  val s_PlaylistChanged : (OBus_path.t * string * string) Signal.t
  val p_ActivePlaylist : (bool * (OBus_path.t * string * string), [ `readable ]) Property.t
  val p_Orderings : (string list, [ `readable ]) Property.t
  val p_PlaylistCount : (int32, [ `readable ]) Property.t
  type 'a members = {
    m_ActivatePlaylist : 'a OBus_object.t -> OBus_path.t -> unit Lwt.t;
    m_GetPlaylists : 'a OBus_object.t -> int32 * int32 * string * bool -> (OBus_path.t * string * string) list Lwt.t;
    p_ActivePlaylist : 'a OBus_object.t -> (bool * (OBus_path.t * string * string)) React.signal;
    p_Orderings : 'a OBus_object.t -> string list React.signal;
    p_PlaylistCount : 'a OBus_object.t -> int32 React.signal;
  }
  val make : 'a members -> 'a OBus_object.interface
end
