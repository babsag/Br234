.class public final synthetic Lcom/combateafraude/documentdetector/controller/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/e;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/e;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->X(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V

    return-void
.end method
