.class public final synthetic Lcom/combateafraude/documentdetector/controller/audio/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/audio/a;->a:Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/audio/a;->a:Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;

    invoke-static {v0, p1}, Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;->d(Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;Landroid/media/MediaPlayer;)V

    return-void
.end method
