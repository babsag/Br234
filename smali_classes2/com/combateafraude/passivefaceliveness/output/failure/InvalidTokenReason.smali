.class public Lcom/combateafraude/passivefaceliveness/output/failure/InvalidTokenReason;
.super Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;
.source "InvalidTokenReason.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Token inv\u00e1lido"

    .line 1
    invoke-direct {p0, v0}, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;-><init>(Ljava/lang/String;)V

    return-void
.end method
