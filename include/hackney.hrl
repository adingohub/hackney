-record(client, {
        transport,
        host,
        port,
        netloc = netloc,
        options = [],
        socket = nil,
        recv_timeout = infinity,
        follow_redirect = false,
        max_redirect = 5,
        force_redirect = false,
        redirect = nil,
        location,
        state,
        response_state = start,
        mp_boundary = nil,
        req_type = normal,
        send_fun=nil,
        body_state=waiting,
        req_chunk_size=4096,
        buffer = <<>>,
        version,
        clen = nil,
        te = nil,
        connection = nil,
        method = nil,
        ctype = nil}).

-record(hackney_url, {
        transport,
        scheme,
        netloc,
        raw_path,
        path,
        qs = <<>>,
        fragment = <<>>,
        host,
        port,
        user = <<>>,
        password = <<>> }).

%% common types
-type hackney_url() :: #hackney_url{}.
