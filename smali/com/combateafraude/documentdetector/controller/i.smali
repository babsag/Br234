.class public final synthetic Lcom/combateafraude/documentdetector/controller/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

.field public final synthetic b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

.field public final synthetic c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Lcom/combateafraude/documentdetector/input/DocumentDetector;Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/i;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/i;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/i;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 3

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/i;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/i;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/i;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-static {v0, v1, v2, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Lcom/combateafraude/documentdetector/input/DocumentDetector;Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Z)V

    return-void
.end method
