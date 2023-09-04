.class public final synthetic Lcom/combateafraude/documentdetector/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

.field public final synthetic b:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

.field public final synthetic c:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/g;->a:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/g;->b:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    iput-object p3, p0, Lcom/combateafraude/documentdetector/g;->c:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/combateafraude/documentdetector/g;->a:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/g;->b:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    iget-object v2, p0, Lcom/combateafraude/documentdetector/g;->c:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-static {v0, v1, v2}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->H(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method
