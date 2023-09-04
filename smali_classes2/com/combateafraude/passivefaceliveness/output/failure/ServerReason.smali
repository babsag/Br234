.class public Lcom/combateafraude/passivefaceliveness/output/failure/ServerReason;
.super Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;
.source "ServerReason.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/combateafraude/passivefaceliveness/output/failure/ServerReason;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/output/failure/ServerReason;->code:I

    return v0
.end method
