.class public final synthetic Lcaf/io/d1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lcaf/io/f;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/d1;->a:Lcaf/io/f;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcaf/io/d1;->a:Lcaf/io/f;

    invoke-static {v0, p1}, Lcaf/io/f;->e(Lcaf/io/f;Landroid/media/MediaPlayer;)V

    return-void
.end method
