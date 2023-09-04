.class public Lcom/ca/mas/core/auth/NFCRenderer;
.super Lcom/ca/mas/core/auth/PollingRenderer;
.source "NFCRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/auth/NFCRenderer$c;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BLUETOOTH_CONN_ERR:I = 0x66

.field public static final BLUETOOTH_ERR:I = 0x65

.field public static final NFC_ERR:I = 0x64

.field public static final PROVIDER_URL:Ljava/lang/String; = "provider_url"

.field public static final UUID:Ljava/lang/String; = "uuid"


# instance fields
.field private c:Lcom/ca/mas/core/auth/NFCRenderer$c;

.field private d:Ljava/util/UUID;

.field private e:Landroid/nfc/NfcAdapter;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/auth/PollingRenderer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ca/mas/core/auth/NFCRenderer;->c:Lcom/ca/mas/core/auth/NFCRenderer$c;

    .line 3
    iput-object v0, p0, Lcom/ca/mas/core/auth/NFCRenderer;->d:Ljava/util/UUID;

    .line 4
    iput-object v0, p0, Lcom/ca/mas/core/auth/NFCRenderer;->e:Landroid/nfc/NfcAdapter;

    .line 5
    iput-object v0, p0, Lcom/ca/mas/core/auth/NFCRenderer;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ca/mas/core/auth/NFCRenderer;)Ljava/util/UUID;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/core/auth/NFCRenderer;->d:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic b(Lcom/ca/mas/core/auth/NFCRenderer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/NFCRenderer;->f:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/ca/mas/core/auth/PollingRenderer;->close()V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/auth/NFCRenderer;->c:Lcom/ca/mas/core/auth/NFCRenderer$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ca/mas/core/auth/NFCRenderer$c;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/auth/NFCRenderer;->e:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/ca/mas/core/auth/AuthRenderer;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method protected onError(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onRenderCompleted()V
    .locals 6

    const-string v0, "MAS"

    .line 1
    iget-object v1, p0, Lcom/ca/mas/core/auth/AuthRenderer;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/core/auth/NFCRenderer;->e:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-nez v1, :cond_0

    const-string v0, "NFC is not available"

    .line 2
    invoke-virtual {p0, v3, v0, v2}, Lcom/ca/mas/core/auth/NFCRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "NFC is not enabled"

    .line 4
    invoke-virtual {p0, v3, v0, v2}, Lcom/ca/mas/core/auth/NFCRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 5
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/core/auth/NFCRenderer;->d:Ljava/util/UUID;

    .line 6
    :try_start_0
    new-instance v1, Lcom/ca/mas/core/auth/NFCRenderer$c;

    invoke-direct {v1, p0}, Lcom/ca/mas/core/auth/NFCRenderer$c;-><init>(Lcom/ca/mas/core/auth/NFCRenderer;)V

    iput-object v1, p0, Lcom/ca/mas/core/auth/NFCRenderer;->c:Lcom/ca/mas/core/auth/NFCRenderer$c;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "Failed to start Bluetooth Service, will use polling for NFC notification"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/16 v2, 0x65

    const-string v3, "Unable to start Bluetooth Service"

    .line 9
    invoke-virtual {p0, v2, v3, v1}, Lcom/ca/mas/core/auth/NFCRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/ca/mas/core/auth/NFCRenderer;->e:Landroid/nfc/NfcAdapter;

    new-instance v2, Lcom/ca/mas/core/auth/NFCRenderer$a;

    invoke-direct {v2, p0}, Lcom/ca/mas/core/auth/NFCRenderer$a;-><init>(Lcom/ca/mas/core/auth/NFCRenderer;)V

    iget-object v3, p0, Lcom/ca/mas/core/auth/AuthRenderer;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    new-array v5, v4, [Landroid/app/Activity;

    invoke-virtual {v1, v2, v3, v5}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "uuid"

    .line 12
    iget-object v3, p0, Lcom/ca/mas/core/auth/NFCRenderer;->d:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "provider_url"

    .line 13
    iget-object v3, p0, Lcom/ca/mas/core/auth/AuthRenderer;->provider:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v3}, Lcom/ca/mas/core/service/Provider;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "address"

    .line 14
    iget-object v3, p0, Lcom/ca/mas/core/auth/NFCRenderer;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v2, p0, Lcom/ca/mas/core/auth/NFCRenderer;->e:Landroid/nfc/NfcAdapter;

    new-instance v3, Lcom/ca/mas/core/auth/NFCRenderer$b;

    invoke-direct {v3, p0, v1}, Lcom/ca/mas/core/auth/NFCRenderer$b;-><init>(Lcom/ca/mas/core/auth/NFCRenderer;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/ca/mas/core/auth/AuthRenderer;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-array v4, v4, [Landroid/app/Activity;

    invoke-virtual {v2, v3, v1, v4}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 16
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "Failed to set NFC Push Message Callback"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    :cond_3
    :goto_1
    invoke-super {p0}, Lcom/ca/mas/core/auth/PollingRenderer;->onRenderCompleted()V

    return-void
.end method

.method public render()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected startPollingOnStartup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
