CREATE DEFINER=`com_user`@`%` FUNCTION `nextval`(v_seq_name varchar(50)) RETURNS int(11)
BEGIN
    update sequences set current_val = current_val + increment_val  where seq_name = v_seq_name;
    return currentval(v_seq_name);
END