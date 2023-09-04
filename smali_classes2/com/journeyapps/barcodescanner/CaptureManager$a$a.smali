.class Lcom/journeyapps/barcodescanner/CaptureManager$a$a;
.super Ljava/lang/Object;
.source "CaptureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/CaptureManager$a;->barcodeResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/BarcodeResult;

.field final synthetic b:Lcom/journeyapps/barcodescanner/CaptureManager$a;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CaptureManager$a;Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$a$a;->b:Lcom/journeyapps/barcodescanner/CaptureManager$a;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager$a$a;->a:Lcom/journeyapps/barcodescanner/BarcodeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$a$a;->b:Lcom/journeyapps/barcodescanner/CaptureManager$a;

    iget-object v0, v0, Lcom/journeyapps/barcodescanner/CaptureManager$a;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$a$a;->a:Lcom/journeyapps/barcodescanner/BarcodeResult;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/CaptureManager;->returnResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V

    return-void
.end method
