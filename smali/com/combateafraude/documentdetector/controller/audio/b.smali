.class public final synthetic Lcom/combateafraude/documentdetector/controller/audio/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/audio/b;->a:Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;

    iput p2, p0, Lcom/combateafraude/documentdetector/controller/audio/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/audio/b;->a:Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;

    iget v1, p0, Lcom/combateafraude/documentdetector/controller/audio/b;->b:I

    invoke-static {v0, v1}, Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;->e(Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;I)V

    return-void
.end method
