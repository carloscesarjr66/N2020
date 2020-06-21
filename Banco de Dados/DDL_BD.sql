create table TB_USUARIO(
id_usuario integer primary key,
nome_usu varchar(20),
sobrenome_usu varchar(40),
cpf_usu varchar(11),
dt_nasc date,
email_usu varchar(40),
pw_usu varchar(20),
tel_usu number(11));

create table TB_EMPRESA(
id_empresa integer primary key,
cnpj NUMBER(14),
razao_social varchar(100),
ramo_atuacao varchar(40),
nome_fantasia varchar(50),
email_emp varchar(30),
pw_emp varchar(20),
tel_emp number(11),
id_rep references tb_representante(id_rep),
id_endereco references tb_endereco(id_endereco),
id_func references tb_funcionamento(id_func));

create table TB_REPRESENTANTE(
id_rep integer primary key,
nome_rep varchar(20),
sobrenome_rep varchar(40),
cpf_rep varchar(11),
email_rep varchar(40),
tel_rep number(11),
cargo_rep varchar(35));

create table TB_FUNCIONAMENTO (
id_func integer primary key,
dia_seg varchar2(1),
hr_seg varchar2(15),
dia_ter varchar2(1),
hr_ter varchar2(15),
dia_qua varchar2(1),
hr_qua varchar2(15),
dia_qui varchar2(1),
hr_qui varchar2(15),
dia_sex varchar2(1),
hr_sex varchar2(15),
dia_sab varchar2(1),
hr_sab varchar2(15),
dia_dom varchar2(1),
hr_dom varchar2(15)
);

create table TB_ENDERECO(
id_endereco integer primary key,
cep number(8),
cidade varchar (25),
uf varchar(2),
logradouro varchar(15),
numero number(4),
complemento varchar(20));

create table TB_AGENDAMENTO(
id_agendamento integer primary key,
dt_agend date,
obs_agend varchar2(15),
id_usuario references tb_usuario(id_usuario),
id_empresa references tb_empresa(id_empresa));