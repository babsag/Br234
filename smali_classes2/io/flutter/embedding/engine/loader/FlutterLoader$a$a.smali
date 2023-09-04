.class Lio/flutter/embedding/engine/loader/FlutterLoader$a$a;
.super Ljava/lang/Object;
.source "FlutterLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/loader/FlutterLoader$a;->a()Lio/flutter/embedding/engine/loader/FlutterLoader$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/loader/FlutterLoader$a;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/loader/FlutterLoader$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$a$a;->a:Lio/flutter/embedding/engine/loader/FlutterLoader$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lio/flutter/embedding/engine/FlutterJNI;->nativePrefetchDefaultFontManager()V

    return-void
.end method
