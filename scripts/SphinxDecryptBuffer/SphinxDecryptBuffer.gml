/// Decrypts an entire buffer, and returns that decrypted buffer
/// 
/// @param buffer   Buffer to encrypt
/// @param key      64-bit integer to "unlock" the buffer

function SphinxDecryptBuffer(_buffer, _key)
{
	if ( !is_int64(_key) )
	{
		show_error("Sphinx:\n\nThe key provided is not a 64-bit integer!\n", true);
	}
    return SphinxDecryptBufferExt(_buffer, 0, buffer_get_size(_buffer), _key);
}