.class public final synthetic Lcom/combateafraude/documentdetector/controller/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/combateafraude/documentdetector/input/CaptureStage;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/n;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/n;->c:Lcom/combateafraude/documentdetector/input/CaptureStage;

    iput-object p4, p0, Lcom/combateafraude/documentdetector/controller/n;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/n;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/n;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/n;->c:Lcom/combateafraude/documentdetector/input/CaptureStage;

    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/n;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->f0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;Ljava/lang/String;)V

    return-void
.end method
