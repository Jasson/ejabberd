%%%----------------------------------------------------------------------
%%%
%%% ejabberd, Copyright (C) 2002-2011   ProcessOne
%%%
%%% This program is free software; you can redistribute it and/or
%%% modify it under the terms of the GNU General Public License as
%%% published by the Free Software Foundation; either version 2 of the
%%% License, or (at your option) any later version.
%%%
%%% This program is distributed in the hope that it will be useful,
%%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
%%% General Public License for more details.
%%%
%%% You should have received a copy of the GNU General Public License
%%% along with this program; if not, write to the Free Software
%%% Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
%%% 02111-1307 USA
%%%
%%%----------------------------------------------------------------------

-record(roster, {usj,
		 us,
		 jid,
		 name = "",
		 subscription = none,
		 ask = none,
		 groups = [],
		 askmessage = [],
		 xs = []}).

-record(roster_version, {us,
			version}).

%% CAUTION: using this macro is valid only after ejabberd_backend:init
%% was called!
-define(DISPATCH(Function, Args),
    ejabberd_backend:dispatch(?MODULE, mod_roster_backend:backend(),
        Function, Args)).
