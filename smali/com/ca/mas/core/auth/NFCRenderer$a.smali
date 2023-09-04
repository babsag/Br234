.class Lcom/ca/mas/core/auth/NFCRenderer$a;
.super Ljava/lang/Object;
.source "NFCRenderer.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/auth/NFCRenderer;->onRenderCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/auth/NFCRenderer;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/auth/NFCRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/NFCRenderer$a;->a:Lcom/ca/mas/core/auth/NFCRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ca/mas/core/auth/NFCRenderer$a;->a:Lcom/ca/mas/core/auth/NFCRenderer;

    invoke-virtual {p1}, Lcom/ca/mas/core/auth/PollingRenderer;->poll()V

    return-void
.end method
