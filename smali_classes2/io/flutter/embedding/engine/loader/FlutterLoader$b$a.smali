.class Lio/flutter/embedding/engine/loader/FlutterLoader$b$a;
.super Ljava/lang/Object;
.source "FlutterLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/loader/FlutterLoader$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/loader/FlutterLoader$b;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/loader/FlutterLoader$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$b$a;->a:Lio/flutter/embedding/engine/loader/FlutterLoader$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$b$a;->a:Lio/flutter/embedding/engine/loader/FlutterLoader$b;

    iget-object v1, v0, Lio/flutter/embedding/engine/loader/FlutterLoader$b;->e:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iget-object v0, v0, Lio/flutter/embedding/engine/loader/FlutterLoader$b;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$b$a;->a:Lio/flutter/embedding/engine/loader/FlutterLoader$b;

    iget-object v2, v2, Lio/flutter/embedding/engine/loader/FlutterLoader$b;->b:[Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v0, v2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$b$a;->a:Lio/flutter/embedding/engine/loader/FlutterLoader$b;

    iget-object v1, v0, Lio/flutter/embedding/engine/loader/FlutterLoader$b;->c:Landroid/os/Handler;

    iget-object v0, v0, Lio/flutter/embedding/engine/loader/FlutterLoader$b;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
