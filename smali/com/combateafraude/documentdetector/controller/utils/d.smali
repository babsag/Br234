.class public final synthetic Lcom/combateafraude/documentdetector/controller/utils/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

.field public final synthetic b:Landroidx/lifecycle/Observer;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;Landroidx/lifecycle/Observer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/utils/d;->a:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/utils/d;->b:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/utils/d;->a:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/utils/d;->b:Landroidx/lifecycle/Observer;

    invoke-static {v0, v1, p1}, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;->g(Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;Landroidx/lifecycle/Observer;Ljava/lang/Object;)V

    return-void
.end method
