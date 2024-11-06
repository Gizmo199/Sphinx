/// Decrypts a string encrypted by SphinxEncryptString()
/// 
/// @param string   String to encrypt
/// @param key      64-bit integer to use to "unlock" the encrypted string

function SphinxDecryptString(_string, _key)
{
	if ( !is_int64(_key) )
	{
		show_error("Sphinx:\n\nThe key provided is not a 64-bit integer!\n", true);
	}
    var _encrypted = buffer_base64_decode(_string);
    
    var _decrypted = SphinxDecryptBuffer(_encrypted, _key);
    buffer_delete(_encrypted);
    
    var _result = buffer_read(_decrypted, buffer_text);
    buffer_delete(_decrypted);
    
    return _result;
}