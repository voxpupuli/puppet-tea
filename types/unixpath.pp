# this regex rejects any path component that is a / or a NUL
type Datatypes::Unixpath = Pattern[/^\/([^\/\0]+(\/)?)+$/]
