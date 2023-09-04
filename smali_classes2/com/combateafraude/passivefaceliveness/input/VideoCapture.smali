.class public Lcom/combateafraude/passivefaceliveness/input/VideoCapture;
.super Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;
.source "VideoCapture.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private bitRate:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bitRate"
    .end annotation
.end field

.field private frameRate:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "frameRate"
    .end annotation
.end field

.field private time:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;-><init>()V

    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->time:I

    const/16 v0, 0x3c

    .line 8
    iput v0, p0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->frameRate:I

    const/high16 v0, 0x400000

    .line 9
    iput v0, p0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->bitRate:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x3L
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->time:I

    const/16 v1, 0x3c

    .line 3
    iput v1, p0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->frameRate:I

    const/high16 v1, 0x400000

    .line 4
    iput v1, p0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->bitRate:I

    if-le p1, v0, :cond_0

    .line 5
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->time:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getBitRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->bitRate:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "video/mp4"

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->frameRate:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->time:I

    return v0
.end method

.method public setBitRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->bitRate:I

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->frameRate:I

    return-void
.end method
