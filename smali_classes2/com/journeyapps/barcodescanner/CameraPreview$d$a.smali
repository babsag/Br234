.class Lcom/journeyapps/barcodescanner/CameraPreview$d$a;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/CameraPreview$d;->onRotationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CameraPreview$d;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$d$a;->a:Lcom/journeyapps/barcodescanner/CameraPreview$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$d$a;->a:Lcom/journeyapps/barcodescanner/CameraPreview$d;

    iget-object v0, v0, Lcom/journeyapps/barcodescanner/CameraPreview$d;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->f(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    return-void
.end method
