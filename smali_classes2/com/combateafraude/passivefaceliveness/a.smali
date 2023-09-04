.class public final synthetic Lcom/combateafraude/passivefaceliveness/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

.field public final synthetic b:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

.field public final synthetic c:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/a;->a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/a;->b:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    iput-object p3, p0, Lcom/combateafraude/passivefaceliveness/a;->c:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/a;->a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    iget-object v1, p0, Lcom/combateafraude/passivefaceliveness/a;->b:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    iget-object v2, p0, Lcom/combateafraude/passivefaceliveness/a;->c:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-static {v0, v1, v2}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->q(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method
