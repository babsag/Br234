.class public Lcom/combateafraude/passivefaceliveness/input/ImageCapture;
.super Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;
.source "ImageCapture.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final afterPictureMillis:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "afterPictureMillis"
    .end annotation
.end field

.field private final beforePictureMillis:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "beforePictureMillis"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;-><init>()V

    const-wide/16 v0, 0x7d0

    .line 5
    iput-wide v0, p0, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;->afterPictureMillis:J

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;->beforePictureMillis:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;->afterPictureMillis:J

    .line 3
    iput-wide p3, p0, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;->beforePictureMillis:J

    return-void
.end method


# virtual methods
.method public getAfterPictureMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;->afterPictureMillis:J

    return-wide v0
.end method

.method public getBeforePictureMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;->beforePictureMillis:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "image/jpeg"

    return-object v0
.end method
