.class public final Lcom/example/qrcode/QrcodePlugin;
.super Ljava/lang/Object;
.source "QrcodePlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/qrcode/QrcodePlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/example/qrcode/QrcodePlugin;",
        "",
        "()V",
        "Companion",
        "qrcode_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/example/qrcode/QrcodePlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/example/qrcode/QrcodePlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/qrcode/QrcodePlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/qrcode/QrcodePlugin;->Companion:Lcom/example/qrcode/QrcodePlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 1
    .param p0    # Lio/flutter/plugin/common/PluginRegistry$Registrar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/example/qrcode/QrcodePlugin;->Companion:Lcom/example/qrcode/QrcodePlugin$Companion;

    invoke-virtual {v0, p0}, Lcom/example/qrcode/QrcodePlugin$Companion;->registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    return-void
.end method
