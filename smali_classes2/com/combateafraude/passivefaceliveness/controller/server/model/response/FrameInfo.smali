.class public Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FrameInfo;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private index:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "index"
    .end annotation
.end field

.field private total:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FrameInfo;->index:I

    .line 3
    iput p2, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FrameInfo;->total:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FrameInfo;->index:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FrameInfo;->total:I

    return v0
.end method
