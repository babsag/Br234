.class public final Lcom/manateeworks/BarcodeScanner$MWResult;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manateeworks/BarcodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MWResult"
.end annotation


# instance fields
.field public bytes:[B

.field public bytesLength:I

.field public encryptedResult:Ljava/lang/String;

.field public imageHeight:I

.field public imageWidth:I

.field public isGS1:Z

.field public locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

.field public subtype:I

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/manateeworks/BarcodeScanner$MWResult;->text:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/manateeworks/BarcodeScanner$MWResult;->bytes:[B

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/manateeworks/BarcodeScanner$MWResult;->bytesLength:I

    .line 5
    iput v1, p0, Lcom/manateeworks/BarcodeScanner$MWResult;->type:I

    .line 6
    iput v1, p0, Lcom/manateeworks/BarcodeScanner$MWResult;->subtype:I

    .line 7
    iput-boolean v1, p0, Lcom/manateeworks/BarcodeScanner$MWResult;->isGS1:Z

    .line 8
    iput-object v0, p0, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    .line 9
    iput v1, p0, Lcom/manateeworks/BarcodeScanner$MWResult;->imageWidth:I

    .line 10
    iput v1, p0, Lcom/manateeworks/BarcodeScanner$MWResult;->imageHeight:I

    return-void
.end method
