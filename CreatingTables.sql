Create 
 table responsavel_tb(
       responsavel_id INT IDENTITY(1,1) 
	                        PRIMARY KEY NOT NULL
     , responsavel     VARCHAR(30)          NULL
     , descricao       VARCHAR(50)          NULL
     , dt_inclusao     SMALLDATETIME        NULL
	 , dt_alteracao    SMALLDATETIME        NULL
     , usuario         VARCHAR(20)          NULL)


Create 
 table sistema_tb(
       sistema_id      INT IDENTITY(1,1) 
	                        PRIMARY KEY NOT NULL
     , sistema         VARCHAR(20)          NULL
     , descricao       VARCHAR(50)          NULL
     , dt_inclusao     SMALLDATETIME        NULL
	 , dt_alteracao    SMALLDATETIME        NULL
     , usuario         VARCHAR(20)          NULL)


Create 
 table situacao_tb(
       situacao_id      INT IDENTITY(1,1) 
	                        PRIMARY KEY NOT NULL
	 , Situacao         VARCHAR(100)        NULL
     , descricao        VARCHAR( 50)        NULL
     , dt_inclusao      SMALLDATETIME       NULL
	 , dt_alteracao     SMALLDATETIME       NULL
     , usuario          VARCHAR(20)         NULL)

Create 
 table tipo_tb(
       tipo_id          INT IDENTITY(1,1) 
	                        PRIMARY KEY NOT NULL
     , tipo             VARCHAR(30)         NULL
     , descricao        VARCHAR(50)         NULL
     , dt_inclusao      SMALLDATETIME       NULL
	 , dt_alteracao     SMALLDATETIME       NULL
     , usuario          VARCHAR(20)         NULL)

Create 
 table retorno_tb(
       retorno_id       INT IDENTITY(1,1) 
	                        PRIMARY KEY NOT NULL
     , retorno          VARCHAR(30)         NULL
     , descricao        VARCHAR(50)         NULL
     , dt_inclusao      SMALLDATETIME       NULL
	 , dt_alteracao     SMALLDATETIME       NULL
     , usuario          VARCHAR(20)         NULL)


Create -- drop
  table sustentacao_regra_tb(
        sustentacao_regra_id	INT	IDENTITY(1,1) 
	                        PRIMARY KEY   NOT NULL
      , responsavel_id         INT            NULL
      , sistema_id             INT            NULL
      , situacao_id            INT            NULL
      , tipo_id                INT            NULL
      , retorno_id             INT            NULL
      , descricao	           VARCHAR(200)   NULL
      , dt_inicio_vigencia	   SMALLDATETIME  NULL	
      , dt_fim_vigencia	       SMALLDATETIME  NULL	
      , ativo	               CHAR( 1)       NULL
      , dt_inclusao	           SMALLDATETIME  NULL	
      , dt_alteracao	       SMALLDATETIME  NULL
	  , usuario	               VARCHAR(20)    NULL
	  , CONSTRAINT fk_sus_responsavel         FOREIGN KEY (responsavel_id)         REFERENCES responsavel_tb         (responsavel_id)
	  , CONSTRAINT fk_sus_sistema             FOREIGN KEY (sistema_id)             REFERENCES sistema_tb             (sistema_id)
	  , CONSTRAINT fk_sus_situacao            FOREIGN KEY (situacao_id)            REFERENCES situacao_tb            (situacao_id)
	  , CONSTRAINT fk_sus_tipo                FOREIGN KEY (tipo_id)                REFERENCES tipo_tb                (tipo_id)
	  , CONSTRAINT fk_sus_retorno             FOREIGN KEY (retorno_id)             REFERENCES retorno_tb             (retorno_id)
)	



Create -- drop
  table regras_gerais_tb(
        sustentacao_geral_id	INT	IDENTITY(1,1) 
	                           PRIMARY KEY   NOT NULL
      , responsavel_id         INT            NULL
      , sistema_id             INT            NULL
      , situacao_id            INT            NULL
      , tipo_id                INT            NULL
      , retorno_id             INT            NULL
      , descricao	           VARCHAR(300)   NULL
      , dt_inclusao	           SMALLDATETIME  NULL	
      , dt_alteracao	       SMALLDATETIME  NULL
	  , usuario	               VARCHAR(20)    NULL)
