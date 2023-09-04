.class Lbr/com/topaz/g/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/g/c;


# direct methods
.method constructor <init>(Lbr/com/topaz/g/c;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/g/c$a;->a:Lbr/com/topaz/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lbr/com/topaz/g/c$a;->a:Lbr/com/topaz/g/c;

    const/4 v0, 0x0

    iput-object v0, p1, Lbr/com/topaz/g/c;->c:Lbr/com/topaz/a/b;

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lbr/com/topaz/g/c$a;->a:Lbr/com/topaz/g/c;

    invoke-static {p2}, Lbr/com/topaz/a/b$a;->a(Landroid/os/IBinder;)Lbr/com/topaz/a/b;

    move-result-object p2

    iput-object p2, p1, Lbr/com/topaz/g/c;->c:Lbr/com/topaz/a/b;

    iget-object p1, p0, Lbr/com/topaz/g/c$a;->a:Lbr/com/topaz/g/c;

    invoke-virtual {p1}, Lbr/com/topaz/g/c;->b()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lbr/com/topaz/g/c$a;->a:Lbr/com/topaz/g/c;

    const/4 v0, 0x0

    iput-object v0, p1, Lbr/com/topaz/g/c;->c:Lbr/com/topaz/a/b;

    return-void
.end method
