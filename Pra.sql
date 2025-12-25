select nvl(Null, 'A') || coalesce(Null, 'B') from dual;

//OutPut AB

// Explanation:
/* Nvl ( Null 'A') returns A coalesce ( Null 'B')
return first not null value that is 'B' answer is AB*/