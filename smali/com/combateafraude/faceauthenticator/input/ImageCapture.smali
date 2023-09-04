.class public Lcom/combateafraude/faceauthenticator/input/ImageCapture;
.super Lcom/combateafraude/faceauthenticator/input/CaptureSettings;
.source "ImageCapture.java"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/input/CaptureSettings;-><init>()V

    const-wide/16 v0, 0x7d0

    .line 5
    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/input/ImageCapture;->a:J

    const-wide/16 v0, 0x5dc

    .line 6
    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/input/ImageCapture;->b:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/input/CaptureSettings;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/input/ImageCapture;->a:J

    .line 3
    iput-wide p3, p0, Lcom/combateafraude/faceauthenticator/input/ImageCapture;->b:J

    return-void
.end method


# virtual methods
.method public getAfterPictureMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/input/ImageCapture;->a:J

    return-wide v0
.end method

.method public getBeforePictureMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/input/ImageCapture;->b:J

    return-wide v0
.end method
