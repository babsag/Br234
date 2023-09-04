.class public Lbr/com/topaz/h0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/h0/a$b;
    }
.end annotation


# static fields
.field private static b:Lbr/com/topaz/h0/a;


# instance fields
.field private a:Landroid/os/FileObserver;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbr/com/topaz/h0/a;
    .locals 1

    sget-object v0, Lbr/com/topaz/h0/a;->b:Lbr/com/topaz/h0/a;

    if-nez v0, :cond_0

    new-instance v0, Lbr/com/topaz/h0/a;

    invoke-direct {v0}, Lbr/com/topaz/h0/a;-><init>()V

    sput-object v0, Lbr/com/topaz/h0/a;->b:Lbr/com/topaz/h0/a;

    :cond_0
    sget-object v0, Lbr/com/topaz/h0/a;->b:Lbr/com/topaz/h0/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lbr/com/topaz/h0/a$b;)V
    .locals 7

    iget-object v0, p0, Lbr/com/topaz/h0/a;->a:Landroid/os/FileObserver;

    if-nez v0, :cond_0

    new-instance v0, Lbr/com/topaz/h0/a$a;

    const/16 v4, 0x100

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lbr/com/topaz/h0/a$a;-><init>(Lbr/com/topaz/h0/a;Ljava/lang/String;ILbr/com/topaz/h0/a$b;Ljava/lang/String;)V

    iput-object v0, p0, Lbr/com/topaz/h0/a;->a:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/h0/a;->a:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbr/com/topaz/h0/a;->a:Landroid/os/FileObserver;

    :cond_0
    return-void
.end method
