.class public final Lcaf/io/b;
.super Ljava/lang/Object;
.source "Analytics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcaf/io/b$a;
    }
.end annotation


# static fields
.field private static a:Lcaf/io/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final e:Lcaf/io/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lcaf/io/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcaf/io/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcaf/io/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcaf/io/b;->e:Lcaf/io/b$a;

    return-void
.end method

.method private constructor <init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/passivefaceliveness/input/ProxySettings;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcaf/io/b;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcaf/io/b;->c:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "sdkActivity.applicationContext"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcaf/io/b;->d:Landroid/content/Context;

    .line 5
    new-instance p2, Lcaf/io/Z;

    .line 6
    new-instance v2, Lcaf/io/c;

    invoke-direct {v2}, Lcaf/io/c;-><init>()V

    .line 7
    const-class v1, Lcaf/io/c$a;

    const/16 v3, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcaf/io/Z;-><init>(Ljava/lang/Class;Lcaf/io/d;ILcom/combateafraude/passivefaceliveness/input/ProxySettings;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;Z)V

    .line 8
    invoke-virtual {p2}, Lcaf/io/Z;->a()Lcaf/io/O;

    move-result-object p1

    const-string p2, "Server(\n        Analytic\u2026alse\n    ).getInterface()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcaf/io/c$a;

    iput-object p1, p0, Lcaf/io/b;->f:Lcaf/io/c$a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/passivefaceliveness/input/ProxySettings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcaf/io/b;-><init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/passivefaceliveness/input/ProxySettings;)V

    return-void
.end method

.method public static final synthetic a()Lcaf/io/b;
    .locals 1

    .line 2
    sget-object v0, Lcaf/io/b;->a:Lcaf/io/b;

    return-object v0
.end method

.method public static final synthetic a(Lcaf/io/b;)Lcaf/io/c$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/b;->f:Lcaf/io/c$a;

    return-object p0
.end method

.method public static final synthetic b(Lcaf/io/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/b;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lcaf/io/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d(Lcaf/io/b;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/b;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic e(Lcaf/io/b;)V
    .locals 0

    .line 1
    sput-object p0, Lcaf/io/b;->a:Lcaf/io/b;

    return-void
.end method
