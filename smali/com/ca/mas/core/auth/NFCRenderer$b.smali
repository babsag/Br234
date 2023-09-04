.class Lcom/ca/mas/core/auth/NFCRenderer$b;
.super Ljava/lang/Object;
.source "NFCRenderer.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/auth/NFCRenderer;->onRenderCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/ca/mas/core/auth/NFCRenderer;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/auth/NFCRenderer;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/NFCRenderer$b;->b:Lcom/ca/mas/core/auth/NFCRenderer;

    iput-object p2, p0, Lcom/ca/mas/core/auth/NFCRenderer$b;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 3

    .line 1
    new-instance p1, Landroid/nfc/NdefMessage;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    iget-object v1, p0, Lcom/ca/mas/core/auth/NFCRenderer$b;->a:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "application/vnd.com.ca.mas.core.beam"

    .line 3
    invoke-static {v2, v1}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object p1
.end method
