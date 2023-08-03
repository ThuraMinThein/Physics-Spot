/*
  
*/

import 'angular_ans_false.dart';
import 'angular_ans_true.dart';
import 'energy_ans_false.dart';
import 'momentum_ans_false.dart';
import 'momentum_ans_true.dart';
import 'energy_ans_true.dart';
import 'dart:math';

class MomentumCalculatorFun {
  dynamic p1, p2, p3;
  mass1(mA, vA1, vA2, mB, vB1, vB2) {
    if (vA1 != null &&
        vA2 != null &&
        mB != null &&
        vB1 != null &&
        vB2 != null) {
      p1 = mB * (vB2 - vB1);
      p2 = p1 / (vA1 - vA2);
      return p2;
    } else {
      return false;
    }
  }

  intialVelocity1(mA, vA1, vA2, mB, vB1, vB2) {
    if (mA != null && vA2 != null && mB != null && vB1 != null && vB2 != null) {
      p1 = (mA * vA2) + (mB * vB2);
      p2 = p1 - (mB * vB1);
      p3 = p2 / mA;
      return p3;
    } else {
      return false;
    }
  }

  finalVelocity1(mA, vA1, vA2, mB, vB1, vB2) {
    if (vA1 != null && mA != null && mB != null && vB1 != null && vB2 != null) {
      p1 = ((mA * vA1) + (mB * vB1)) - (mB * vB2);
      p2 = p1 / mA;
      return p2;
    } else {
      return false;
    }
  }

  mass2(mA, vA1, vA2, mB, vB1, vB2) {
    if (vA1 != null &&
        vA2 != null &&
        vB1 != null &&
        mA != null &&
        vB2 != null) {
      p1 = mA * (vA1 - vA2);
      p2 = p1 / (vB2 - vB1);
      return p2;
    } else {
      return false;
    }
  }

  intialVelocity2(mA, vA1, vA2, mB, vB1, vB2) {
    if (vA1 != null && vA2 != null && mB != null && mA != null && vB2 != null) {
      p1 = (mA * vA2) + (mB * vB2);
      p2 = p1 - (mA * vA1);
      p3 = p2 / mB;
      return p3;
    } else {
      return false;
    }
  }

  finalVelocity2(mA, vA1, vA2, mB, vB1, vB2) {
    if (vA1 != null && vA2 != null && mB != null && vB1 != null && mA != null) {
      p1 = ((mA * vA1) + (mB * vB1) - (mA * vA2));
      p2 = p1 / mB;
      return p2;
    } else {
      return false;
    }
  }

  totalMomentum(mA, vA1, vA2, mB, vB1, vB2) {
    if (vA1 != null &&
        vA2 != null &&
        mB != null &&
        vB1 != null &&
        vB2 != null &&
        mA != null) {
      p1 = (mA * vA1) + (mB * vB1);
      p2 = (mA * vA2) + (mB * vB2);
      if (p1 == p2) {
        return MomentumTrue.getData(p1, p2);
      } else if (p1 != p2) {
        return MomentumFalse.getData(p1, p2, mA, vA1, vA2, mB, vB1, vB2);
      }
    } else {
      return false;
    }
  }
}

class EnergyCalculatorFun {
  double g = 9.8;
  dynamic e1, e2;

  firstplaceVelocity(m, p1v, p1h, p2v, p2h) {
    if (p1h != null && p2v != null && p2h != null) {
      double sqp2v = p2v * p2v;
      e1 = sqp2v + (2 * g * p2h) - (2 * g * p1h);
      e2 = sqrt(e1);
      return e2;
    } else {
      return false;
    }
  }

  firstplceHeight(m, p1v, p1h, p2v, p2h) {
    if (p1v != null && p2v != null && p2h != null) {
      double sqp1v = p1v * p1v;
      double sqp2v = p2v * p2v;
      e1 = sqp2v - sqp1v + (2 * g * p2h);
      e2 = e1 / (2 * g);
      return e2;
    } else {
      return false;
    }
  }

  secondplaceVelocity(m, p1v, p1h, p2v, p2h) {
    if (p1v != null && p1h != null && p2h != null) {
      double sqp1v = p1v * p1v;
      e1 = sqp1v + (2 * g * p1h) - (2 * g * p2h);
      e2 = sqrt(e1);
      return e2;
    } else {
      return false;
    }
  }

  secondplaceHeight(m, p1v, p1h, p2v, p2h) {
    if (p1v != null && p1h != null && p2v != null) {
      double sqp1v = p1v * p1v;
      double sqp2v = p2v * p2v;
      e1 = sqp1v - sqp2v + (2 * g * p1h);
      e2 = e1 / (2 * g);
      return e2;
    } else {
      return false;
    }
  }

  totalEnergy(m, p1v, p1h, p2v, p2h) {
    if (m != null && p1v != null && p1h != null && p2v != null && p2h != null) {
      double sqp1v = p1v * p1v;
      double sqp2v = p2v * p2v;
      e1 = m * ((g * p1h) + (1 / 2 * sqp1v));
      e2 = m * ((g * p2h) + (1 / 2 * sqp2v));
      if (e1 == e2) {
        return EnergyTrue.getData(e1, e2);
      } else if (e1 != e2) {
        return EnergyFalse.getData(e1, e2, m, p1v, p1h, p2v, p2h);
      } else {
        return false;
      }
    }
  }
}

class AngularCalculatorFun {
  dynamic o, f, i, w, a, b;

  firstMass(r, m, v1, m2, v2) {
    if (r != null && v1 != null && m2 != null && v2 != null) {
      o = (m2 * v2) / v1;
      return o;
    } else {
      return false;
    }
  }

  firstVelocity(r, m, v1, m2, v2) {
    if (r != null && m != null && m2 != null && v2 != null) {
      o = (m2 * v2) / m;
      return o;
    } else {
      return false;
    }
  }

  secondMass(r, m, v1, m2, v2) {
    if (r != null && m != null && v1 != null && v2 != null) {
      o = (m * v1) / v2;
      return o;
    } else {
      return false;
    }
  }

  secondVelocity(r, m, v1, m2, v2) {
    if (r != null && m != null && v1 != null && m2 != null) {
      o = (m * v1) / m2;
      return o;
    } else {
      return false;
    }
  }

  totalAngular(r, m, v1, m2, v2) {
    if (r != null && m != null && v1 != null && m2 != null && v2 != null) {
      double sqr = r * r;
      i = (m * sqr); //first event(moment of inertia)

      w = (v1 / r); //first event(angular velocity)

      a = (m2 * sqr); //second event(moment of inertia)

      b = (v2 / r); //second event(angular velocity)

      o = (m * sqr) * (v1 / r);
      f = (m2 * sqr) * (v2 / r);
      if (o == f) {
        return AngularTrue.getData(o, f, i, w, a, b);
      } else if (o != f) {
        return AngularFalse.getData(i, w, a, b, o, f, r, m, v1, m2, v2);
      }
    } else {
      return false;
    }
  }
}
