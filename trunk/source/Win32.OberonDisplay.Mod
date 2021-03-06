MODULE OberonDisplay;

IMPORT Oberon IN Oberon, System IN Oberon;
(*
System must be imported here as System.Init is called by the Aos system directly after call of  OberonDisplay.Install. If System were not imported,
the upcall in Oberon.Mod and call of System.Init would interfere. See problem described in Modules.
*)


PROCEDURE Install*;
(* trick to make call of OberonDisplay.Install comaptible *)
BEGIN
	System.Init;
	Oberon.Start;
END Install;

END OberonDisplay.
