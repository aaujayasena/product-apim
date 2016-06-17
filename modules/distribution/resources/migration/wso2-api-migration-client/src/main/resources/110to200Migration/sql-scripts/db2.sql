ALTER TABLE AM_API  ADD API_TIER VARCHAR(256);
CALL SYSPROC.ADMIN_CMD('REORG TABLE AM_API');

-- Performance indexes start--

create index IDX_ITS_LMT on IDN_THRIFT_SESSION (LAST_MODIFIED_TIME);
create index IDX_IOAT_AT on IDN_OAUTH2_ACCESS_TOKEN (ACCESS_TOKEN);
create index IDX_IOAT_UT on IDN_OAUTH2_ACCESS_TOKEN (USER_TYPE);
create index IDX_AAI_CTX on AM_API (CONTEXT);
create index IDX_AAKM_CK on AM_APPLICATION_KEY_MAPPING (CONSUMER_KEY);
create index IDX_AAUM_AI on AM_API_URL_MAPPING (API_ID);
create index IDX_AAUM_TT on AM_API_URL_MAPPING (THROTTLING_TIER);
create index IDX_AATP_DQT on AM_API_THROTTLE_POLICY (DEFAULT_QUOTA_TYPE);
create index IDX_ACG_QT on AM_CONDITION_GROUP (QUOTA_TYPE);
create index IDX_APS_QT on AM_POLICY_SUBSCRIPTION (QUOTA_TYPE);
create index IDX_AS_AITIAI on AM_SUBSCRIPTION (API_ID,TIER_ID,APPLICATION_ID);
create index IDX_APA_QT on AM_POLICY_APPLICATION (QUOTA_TYPE);
create index IDX_AA_AT_CB on AM_APPLICATION (APPLICATION_TIER,CREATED_BY);
