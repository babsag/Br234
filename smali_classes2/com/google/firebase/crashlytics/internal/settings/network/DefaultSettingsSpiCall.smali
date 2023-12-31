.class public Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;
.super Lcom/google/firebase/crashlytics/internal/common/AbstractSpiCall;
.source "DefaultSettingsSpiCall.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall;


# instance fields
.field private f:Lcom/google/firebase/crashlytics/internal/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;)V
    .locals 6

    .line 1
    sget-object v4, Lcom/google/firebase/crashlytics/internal/network/HttpMethod;->GET:Lcom/google/firebase/crashlytics/internal/network/HttpMethod;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Lcom/google/firebase/crashlytics/internal/network/HttpMethod;Lcom/google/firebase/crashlytics/internal/Logger;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Lcom/google/firebase/crashlytics/internal/network/HttpMethod;Lcom/google/firebase/crashlytics/internal/Logger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/common/AbstractSpiCall;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Lcom/google/firebase/crashlytics/internal/network/HttpMethod;)V

    .line 3
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->f:Lcom/google/firebase/crashlytics/internal/Logger;

    return-void
.end method

.method private b(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->googleAppId:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-GOOGLE-APP-ID"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->c(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->c(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    .line 4
    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->c(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->c(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->deviceModel:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-DEVICE-MODEL"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->c(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->osBuildVersion:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-OS-BUILD-VERSION"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->c(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->osDisplayVersion:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->c(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p2, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->installIdProvider:Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider;

    .line 10
    invoke-interface {p2}, Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider;->getCrashlyticsInstallId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-CRASHLYTICS-INSTALLATION-ID"

    .line 11
    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->c(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private c(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->f:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse settings JSON from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/AbstractSpiCall;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->f:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->buildVersion:Ljava/lang/String;

    const-string v2, "build_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->displayVersion:Ljava/lang/String;

    const-string v2, "display_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->source:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->instanceId:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "instance"

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method f(Lcom/google/firebase/crashlytics/internal/network/HttpResponse;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->f:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings result was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->body()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->f:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve settings from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/AbstractSpiCall;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method g(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xca

    if-eq p1, v0, :cond_1

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public invoke(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;Z)Lorg/json/JSONObject;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->e(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Ljava/util/Map;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/common/AbstractSpiCall;->getHttpRequest(Ljava/util/Map;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->b(Lcom/google/firebase/crashlytics/internal/network/HttpRequest;Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->f:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting settings from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/AbstractSpiCall;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->f:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings query params were: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->execute()Lcom/google/firebase/crashlytics/internal/network/HttpResponse;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->f:Lcom/google/firebase/crashlytics/internal/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings request ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "X-REQUEST-ID"

    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->f(Lcom/google/firebase/crashlytics/internal/network/HttpResponse;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->f:Lcom/google/firebase/crashlytics/internal/Logger;

    const-string v0, "Settings request failed."

    invoke-virtual {p2, v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "An invalid data collection token was used."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
