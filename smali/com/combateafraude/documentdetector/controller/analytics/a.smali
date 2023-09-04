.class public final synthetic Lcom/combateafraude/documentdetector/controller/analytics/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

.field public final synthetic b:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/analytics/a;->a:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/analytics/a;->b:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/analytics/a;->a:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/analytics/a;->b:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;

    invoke-static {v0, v1}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;->b(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    return-void
.end method
