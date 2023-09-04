.class public Lbr/com/topaz/g/a;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final a:Lbr/com/topaz/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "mcrypt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lbr/com/topaz/g/a$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/g/a$a;-><init>(Lbr/com/topaz/g/a;)V

    iput-object v0, p0, Lbr/com/topaz/g/a;->a:Lbr/com/topaz/a/b$a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lbr/com/topaz/g/a;->a:Lbr/com/topaz/a/b$a;

    return-object p1
.end method
