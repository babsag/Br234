.class public final synthetic Lcom/combateafraude/documentdetector/controller/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/h;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/h;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->a0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;

    move-result-object v0

    return-object v0
.end method
