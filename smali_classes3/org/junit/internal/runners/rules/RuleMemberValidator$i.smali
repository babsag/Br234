.class final Lorg/junit/internal/runners/rules/RuleMemberValidator$i;
.super Ljava/lang/Object;
.source "RuleMemberValidator.java"

# interfaces
.implements Lorg/junit/internal/runners/rules/RuleMemberValidator$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/runners/rules/RuleMemberValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->b(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/junit/internal/runners/rules/a;

    const-string v1, "must return an implementation of MethodRule or TestRule."

    invoke-direct {v0, p1, p2, v1}, Lorg/junit/internal/runners/rules/a;-><init>(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
