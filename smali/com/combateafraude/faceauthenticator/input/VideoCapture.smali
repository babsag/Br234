.class public Lcom/combateafraude/faceauthenticator/input/VideoCapture;
.super Lcom/combateafraude/faceauthenticator/input/CaptureSettings;
.source "VideoCapture.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/input/CaptureSettings;-><init>()V

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/combateafraude/faceauthenticator/input/VideoCapture;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/input/CaptureSettings;-><init>()V

    .line 2
    iput p1, p0, Lcom/combateafraude/faceauthenticator/input/VideoCapture;->a:I

    return-void
.end method


# virtual methods
.method public getTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/input/VideoCapture;->a:I

    return v0
.end method
