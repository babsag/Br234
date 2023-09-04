.class public Lcom/ca/mas/core/conf/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final AUTHENTICATE_OTP_PATH:Lcom/ca/mas/core/conf/Config;

.field public static final AUTHORIZE_PATH:Lcom/ca/mas/core/conf/Config;

.field public static final BLE_RSSI:Lcom/ca/mas/core/conf/Config;

.field public static final BLE_SERVICE_UUID:Lcom/ca/mas/core/conf/Config;

.field public static final BLE_USER_SESSION_CHARACTERISTIC_UUID:Lcom/ca/mas/core/conf/Config;

.field public static final CLIENT_CERT_RSA_KEYBITS:Lcom/ca/mas/core/conf/Config;

.field public static final CLIENT_CREDENTIAL_INIT_PATH:Lcom/ca/mas/core/conf/Config;

.field public static final CLIENT_KEY:Lcom/ca/mas/core/conf/Config;

.field public static final CLIENT_SECRET:Lcom/ca/mas/core/conf/Config;

.field public static final CLIENT_STORAGE:Lcom/ca/mas/core/conf/Config;

.field public static final DEVICE_METADATA_PATH:Lcom/ca/mas/core/conf/Config;

.field public static final ENTERPRISE_APP_PATH:Lcom/ca/mas/core/conf/Config;

.field public static final HOSTNAME:Lcom/ca/mas/core/conf/Config;

.field public static final LOCATION_ENABLED:Lcom/ca/mas/core/conf/Config;

.field public static final LOCATION_PROVIDER:Lcom/ca/mas/core/conf/Config;

.field public static final LOGOUT_DEVICE_PATH:Lcom/ca/mas/core/conf/Config;

.field public static final MSISDN_ENABLED:Lcom/ca/mas/core/conf/Config;

.field public static final ORGANIZATION:Lcom/ca/mas/core/conf/Config;

.field public static final PORT:Lcom/ca/mas/core/conf/Config;

.field public static final PREFIX:Lcom/ca/mas/core/conf/Config;

.field public static final REDIRECT_URI:Lcom/ca/mas/core/conf/Config;

.field public static final REGISTER_DEVICE_PATH:Lcom/ca/mas/core/conf/Config;

.field public static final REGISTER_DEVICE_PATH_CLIENT:Lcom/ca/mas/core/conf/Config;

.field public static final REGISTER_TOKEN_PATH:Lcom/ca/mas/core/conf/Config;

.field public static final REGISTER_TOKEN_PATH_SSO:Lcom/ca/mas/core/conf/Config;

.field public static final REMOVE_DEVICE_PATH:Lcom/ca/mas/core/conf/Config;

.field public static final RENEW_DEVICE_PATH:Lcom/ca/mas/core/conf/Config;

.field public static final REVOKE_PATH:Lcom/ca/mas/core/conf/Config;

.field public static final SCOPE:Lcom/ca/mas/core/conf/Config;

.field public static final SERVER_CERTS:Lcom/ca/mas/core/conf/Config;

.field public static final SSO_ENABLED:Lcom/ca/mas/core/conf/Config;

.field public static final TRUSTED_CERT_PINNED_PUBLIC_KEY_HASHES:Lcom/ca/mas/core/conf/Config;

.field public static final TRUSTED_PUBLIC_PKI:Lcom/ca/mas/core/conf/Config;

.field public static values:[Lcom/ca/mas/core/conf/Config;


# instance fields
.field public key:Ljava/lang/String;

.field public mandatory:Z

.field public path:Ljava/lang/String;

.field public type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 1
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/ca/mas/core/conf/Config;

    const/4 v4, 0x1

    const-string v5, "msso.token.hostname"

    const-string v6, "server.hostname"

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/ca/mas/core/conf/Config;->HOSTNAME:Lcom/ca/mas/core/conf/Config;

    .line 2
    new-instance v5, Lcom/ca/mas/core/conf/Config;

    const/4 v6, 0x0

    const-string v7, "msso.token.port.https"

    const-string v8, "server.port"

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v5, Lcom/ca/mas/core/conf/Config;->PORT:Lcom/ca/mas/core/conf/Config;

    .line 3
    new-instance v7, Lcom/ca/mas/core/conf/Config;

    const-string v8, "msso.token.uri.prefix"

    const-string v9, "server.prefix"

    invoke-direct {v7, v6, v8, v9, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v7, Lcom/ca/mas/core/conf/Config;->PREFIX:Lcom/ca/mas/core/conf/Config;

    .line 4
    new-instance v8, Lcom/ca/mas/core/conf/Config;

    const-class v9, Ljava/util/List;

    const-string v10, "msso.trust.certs.pem"

    const-string v11, "server.server_certs"

    invoke-direct {v8, v6, v10, v11, v9}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v8, Lcom/ca/mas/core/conf/Config;->SERVER_CERTS:Lcom/ca/mas/core/conf/Config;

    .line 5
    new-instance v9, Lcom/ca/mas/core/conf/Config;

    const-string v10, "msso.organization"

    const-string v11, "oauth.client.organization"

    invoke-direct {v9, v4, v10, v11, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v9, Lcom/ca/mas/core/conf/Config;->ORGANIZATION:Lcom/ca/mas/core/conf/Config;

    .line 6
    new-instance v10, Lcom/ca/mas/core/conf/Config;

    const-string v11, "msso.oauth.client.id"

    const-string v12, "oauth.client.client_ids.0.client_id"

    invoke-direct {v10, v4, v11, v12, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v10, Lcom/ca/mas/core/conf/Config;->CLIENT_KEY:Lcom/ca/mas/core/conf/Config;

    .line 7
    new-instance v11, Lcom/ca/mas/core/conf/Config;

    const-string v12, "msso.oauth.client.secret"

    const-string v13, "oauth.client.client_ids.0.client_secret"

    invoke-direct {v11, v6, v12, v13, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v11, Lcom/ca/mas/core/conf/Config;->CLIENT_SECRET:Lcom/ca/mas/core/conf/Config;

    .line 8
    new-instance v12, Lcom/ca/mas/core/conf/Config;

    const-string v13, "msso.oauth.scope"

    const-string v14, "oauth.client.client_ids.0.scope"

    invoke-direct {v12, v6, v13, v14, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v12, Lcom/ca/mas/core/conf/Config;->SCOPE:Lcom/ca/mas/core/conf/Config;

    .line 9
    new-instance v13, Lcom/ca/mas/core/conf/Config;

    const-string v14, "msso.authorize.redirect.uri"

    const-string v15, "oauth.client.client_ids.0.redirect_uri"

    invoke-direct {v13, v6, v14, v15, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v13, Lcom/ca/mas/core/conf/Config;->REDIRECT_URI:Lcom/ca/mas/core/conf/Config;

    .line 10
    new-instance v14, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.url.authorize"

    const-string v4, "oauth.system_endpoints.authorization_endpoint_path"

    invoke-direct {v14, v6, v15, v4, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v14, Lcom/ca/mas/core/conf/Config;->AUTHORIZE_PATH:Lcom/ca/mas/core/conf/Config;

    .line 11
    new-instance v4, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.url.request_token"

    move-object/from16 v16, v14

    const-string v14, "oauth.system_endpoints.token_endpoint_path"

    invoke-direct {v4, v6, v15, v14, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v4, Lcom/ca/mas/core/conf/Config;->REGISTER_TOKEN_PATH:Lcom/ca/mas/core/conf/Config;

    .line 12
    new-instance v15, Lcom/ca/mas/core/conf/Config;

    move-object/from16 v17, v4

    const-string v4, "msso.url.request_token_sso"

    invoke-direct {v15, v6, v4, v14, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v15, Lcom/ca/mas/core/conf/Config;->REGISTER_TOKEN_PATH_SSO:Lcom/ca/mas/core/conf/Config;

    .line 13
    new-instance v4, Lcom/ca/mas/core/conf/Config;

    const-string v14, "msso.url.resource_owner_logout"

    move-object/from16 v18, v15

    const-string v15, "oauth.system_endpoints.usersession_logout_endpoint_path"

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v4, Lcom/ca/mas/core/conf/Config;->LOGOUT_DEVICE_PATH:Lcom/ca/mas/core/conf/Config;

    .line 14
    new-instance v14, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.url.usersession_logout_endpoint_path"

    move-object/from16 v19, v4

    const-string v4, "oauth.system_endpoints.token_revocation_endpoint_path"

    invoke-direct {v14, v6, v15, v4, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v14, Lcom/ca/mas/core/conf/Config;->REVOKE_PATH:Lcom/ca/mas/core/conf/Config;

    .line 15
    new-instance v4, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.url.remove_device_x509"

    move-object/from16 v20, v14

    const-string v14, "mag.system_endpoints.device_remove_endpoint_path"

    invoke-direct {v4, v6, v15, v14, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v4, Lcom/ca/mas/core/conf/Config;->REMOVE_DEVICE_PATH:Lcom/ca/mas/core/conf/Config;

    .line 16
    new-instance v14, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.url.register_device"

    move-object/from16 v21, v4

    const-string v4, "mag.system_endpoints.device_register_endpoint_path"

    invoke-direct {v14, v6, v15, v4, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v14, Lcom/ca/mas/core/conf/Config;->REGISTER_DEVICE_PATH:Lcom/ca/mas/core/conf/Config;

    .line 17
    new-instance v4, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.url.renew_device"

    move-object/from16 v22, v14

    const-string v14, "mag.system_endpoints.device_renew_endpoint_path"

    invoke-direct {v4, v6, v15, v14, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v4, Lcom/ca/mas/core/conf/Config;->RENEW_DEVICE_PATH:Lcom/ca/mas/core/conf/Config;

    .line 18
    new-instance v14, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.url.register_device_client"

    move-object/from16 v23, v4

    const-string v4, "mag.system_endpoints.device_register_client_endpoint_path"

    invoke-direct {v14, v6, v15, v4, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v14, Lcom/ca/mas/core/conf/Config;->REGISTER_DEVICE_PATH_CLIENT:Lcom/ca/mas/core/conf/Config;

    .line 19
    new-instance v4, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.url.client_credentials"

    move-object/from16 v24, v14

    const-string v14, "mag.system_endpoints.client_credential_init_endpoint_path"

    invoke-direct {v4, v6, v15, v14, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v4, Lcom/ca/mas/core/conf/Config;->CLIENT_CREDENTIAL_INIT_PATH:Lcom/ca/mas/core/conf/Config;

    .line 20
    new-instance v14, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.url.auth_otp"

    move-object/from16 v25, v4

    const-string v4, "mag.system_endpoints.authenticate_otp_endpoint_path"

    invoke-direct {v14, v6, v15, v4, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v14, Lcom/ca/mas/core/conf/Config;->AUTHENTICATE_OTP_PATH:Lcom/ca/mas/core/conf/Config;

    .line 21
    new-instance v4, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.url.enterprise_apps"

    move-object/from16 v26, v14

    const-string v14, "mag.oauth_protected_endpoints.enterprise_browser_endpoint_path"

    invoke-direct {v4, v6, v15, v14, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v4, Lcom/ca/mas/core/conf/Config;->ENTERPRISE_APP_PATH:Lcom/ca/mas/core/conf/Config;

    .line 22
    new-instance v14, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso_device_metadata"

    move-object/from16 v27, v4

    const-string v4, "mag.oauth_protected_endpoints.device_metadata_endpoint_path"

    invoke-direct {v14, v6, v15, v4, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v14, Lcom/ca/mas/core/conf/Config;->DEVICE_METADATA_PATH:Lcom/ca/mas/core/conf/Config;

    .line 23
    new-instance v4, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.sso.enabled"

    move-object/from16 v28, v14

    const-string v14, "mag.mobile_sdk.sso_enabled"

    invoke-direct {v4, v6, v15, v14, v1}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v4, Lcom/ca/mas/core/conf/Config;->SSO_ENABLED:Lcom/ca/mas/core/conf/Config;

    .line 24
    new-instance v14, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.location.enabled"

    move-object/from16 v29, v4

    const-string v4, "mag.mobile_sdk.location_enabled"

    invoke-direct {v14, v6, v15, v4, v1}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v14, Lcom/ca/mas/core/conf/Config;->LOCATION_ENABLED:Lcom/ca/mas/core/conf/Config;

    .line 25
    new-instance v4, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.location.provider.name"

    move-object/from16 v30, v14

    const-string v14, "mag.mobile_sdk.location_provider"

    invoke-direct {v4, v6, v15, v14, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v4, Lcom/ca/mas/core/conf/Config;->LOCATION_PROVIDER:Lcom/ca/mas/core/conf/Config;

    .line 26
    new-instance v14, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.msisdn.enabled"

    move-object/from16 v31, v4

    const-string v4, "mag.mobile_sdk.msisdn_enabled"

    invoke-direct {v14, v6, v15, v4, v1}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v14, Lcom/ca/mas/core/conf/Config;->MSISDN_ENABLED:Lcom/ca/mas/core/conf/Config;

    .line 27
    new-instance v4, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.trust.public.pki"

    move-object/from16 v32, v14

    const-string v14, "mag.mobile_sdk.trusted_public_pki"

    invoke-direct {v4, v6, v15, v14, v1}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v4, Lcom/ca/mas/core/conf/Config;->TRUSTED_PUBLIC_PKI:Lcom/ca/mas/core/conf/Config;

    .line 28
    new-instance v1, Lcom/ca/mas/core/conf/Config;

    const-class v14, Ljava/util/List;

    const-string v15, "msso.trust.certs.pins.sha256"

    move-object/from16 v33, v4

    const-string v4, "mag.mobile_sdk.trusted_cert_pinned_public_key_hashes"

    invoke-direct {v1, v6, v15, v4, v14}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/ca/mas/core/conf/Config;->TRUSTED_CERT_PINNED_PUBLIC_KEY_HASHES:Lcom/ca/mas/core/conf/Config;

    .line 29
    new-instance v4, Lcom/ca/mas/core/conf/Config;

    const-string v14, "msso.cert.rsa.keybits"

    const-string v15, "mag.mobile_sdk.client_cert_rsa_keybits"

    invoke-direct {v4, v6, v14, v15, v0}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v4, Lcom/ca/mas/core/conf/Config;->CLIENT_CERT_RSA_KEYBITS:Lcom/ca/mas/core/conf/Config;

    .line 30
    new-instance v14, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.storage"

    move-object/from16 v34, v4

    const-string v4, "mag.mobile_sdk.storage"

    invoke-direct {v14, v6, v15, v4, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v14, Lcom/ca/mas/core/conf/Config;->CLIENT_STORAGE:Lcom/ca/mas/core/conf/Config;

    .line 31
    new-instance v4, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.ble.service.uuid"

    move-object/from16 v35, v14

    const-string v14, "mag.ble.msso_ble_service_uuid"

    invoke-direct {v4, v6, v15, v14, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v4, Lcom/ca/mas/core/conf/Config;->BLE_SERVICE_UUID:Lcom/ca/mas/core/conf/Config;

    .line 32
    new-instance v14, Lcom/ca/mas/core/conf/Config;

    const-string v15, "msso.ble.characteristic.uuid"

    move-object/from16 v36, v4

    const-string v4, "mag.ble.msso_ble_characteristic_uuid"

    invoke-direct {v14, v6, v15, v4, v2}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v14, Lcom/ca/mas/core/conf/Config;->BLE_USER_SESSION_CHARACTERISTIC_UUID:Lcom/ca/mas/core/conf/Config;

    .line 33
    new-instance v2, Lcom/ca/mas/core/conf/Config;

    const-string v4, "msso.ble.rssi"

    const-string v15, "mag.ble.msso_ble_rssi"

    invoke-direct {v2, v6, v4, v15, v0}, Lcom/ca/mas/core/conf/Config;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v2, Lcom/ca/mas/core/conf/Config;->BLE_RSSI:Lcom/ca/mas/core/conf/Config;

    const/16 v0, 0x21

    new-array v0, v0, [Lcom/ca/mas/core/conf/Config;

    aput-object v3, v0, v6

    const/4 v3, 0x1

    aput-object v5, v0, v3

    const/4 v3, 0x2

    aput-object v7, v0, v3

    const/4 v3, 0x3

    aput-object v8, v0, v3

    const/4 v3, 0x4

    aput-object v9, v0, v3

    const/4 v3, 0x5

    aput-object v10, v0, v3

    const/4 v3, 0x6

    aput-object v11, v0, v3

    const/4 v3, 0x7

    aput-object v12, v0, v3

    const/16 v3, 0x8

    aput-object v13, v0, v3

    const/16 v3, 0x9

    aput-object v16, v0, v3

    const/16 v3, 0xa

    aput-object v17, v0, v3

    const/16 v3, 0xb

    aput-object v18, v0, v3

    const/16 v3, 0xc

    aput-object v19, v0, v3

    const/16 v3, 0xd

    aput-object v20, v0, v3

    const/16 v3, 0xe

    aput-object v21, v0, v3

    const/16 v3, 0xf

    aput-object v22, v0, v3

    const/16 v3, 0x10

    aput-object v23, v0, v3

    const/16 v3, 0x11

    aput-object v24, v0, v3

    const/16 v3, 0x12

    aput-object v25, v0, v3

    const/16 v3, 0x13

    aput-object v27, v0, v3

    const/16 v3, 0x14

    aput-object v29, v0, v3

    const/16 v3, 0x15

    aput-object v30, v0, v3

    const/16 v3, 0x16

    aput-object v31, v0, v3

    const/16 v3, 0x17

    aput-object v32, v0, v3

    const/16 v3, 0x18

    aput-object v33, v0, v3

    const/16 v3, 0x19

    aput-object v28, v0, v3

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    const/16 v1, 0x1b

    aput-object v34, v0, v1

    const/16 v1, 0x1c

    aput-object v35, v0, v1

    const/16 v1, 0x1d

    aput-object v36, v0, v1

    const/16 v1, 0x1e

    aput-object v14, v0, v1

    const/16 v1, 0x1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    aput-object v26, v0, v1

    .line 34
    sput-object v0, Lcom/ca/mas/core/conf/Config;->values:[Lcom/ca/mas/core/conf/Config;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/ca/mas/core/conf/Config;->mandatory:Z

    .line 3
    iput-object p2, p0, Lcom/ca/mas/core/conf/Config;->key:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ca/mas/core/conf/Config;->path:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/ca/mas/core/conf/Config;->type:Ljava/lang/Class;

    return-void
.end method
