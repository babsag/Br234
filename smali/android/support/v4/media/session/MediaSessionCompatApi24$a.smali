.class Landroid/support/v4/media/session/MediaSessionCompatApi24$a;
.super Landroid/support/v4/media/session/MediaSessionCompatApi23$a;
.source "MediaSessionCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;",
        ">",
        "Landroid/support/v4/media/session/MediaSessionCompatApi23$a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi23$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V

    return-void
.end method


# virtual methods
.method public onPrepare()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/a$b;->a:Landroid/support/v4/media/session/a$a;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepare()V

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/a$b;->a:Landroid/support/v4/media/session/a$a;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/a$b;->a:Landroid/support/v4/media/session/a$a;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/a$b;->a:Landroid/support/v4/media/session/a$a;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method