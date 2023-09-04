.class Lcom/ca/mas/core/conf/DefaultConfiguration$a;
.super Ljava/util/HashMap;
.source "DefaultConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/conf/DefaultConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/conf/DefaultConfiguration;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/conf/DefaultConfiguration;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/conf/DefaultConfiguration$a;->a:Lcom/ca/mas/core/conf/DefaultConfiguration;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "msso.url.request_token"

    const-string v0, "/auth/oauth/v2/token"

    .line 2
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msso.url.request_token_sso"

    .line 3
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msso.url.register_device"

    const-string v0, "/connect/device/register"

    .line 4
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msso.url.renew_device"

    const-string v0, "/connect/device/renew"

    .line 5
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msso.url.register_device_client"

    const-string v0, "/connect/device/register/client"

    .line 6
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msso.url.resource_owner_logout"

    const-string v0, "/connect/session/logout"

    .line 7
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msso.url.remove_device_x509"

    const-string v0, "/connect/device/remove"

    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msso.url.authorize"

    const-string v0, "/auth/oauth/v2/authorize"

    .line 9
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msso.url.enterprise_apps"

    const-string v0, "/connect/enterprise/browser"

    .line 10
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msso.url.client_credentials"

    const-string v0, "/connect/client/initialize"

    .line 11
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msso_device_metadata"

    const-string v0, "/connect/device/metadata"

    .line 12
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
